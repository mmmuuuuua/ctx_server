#include "Timer.h"
#include <sys/time.h>
#include <sys/timerfd.h>
#include <unistd.h>
#include <queue>
#include "base/Logging.h"
#include "EventLoop.h"

///////////////////ctx

TimerManager::TimerManager(EventLoop* loop):
    loop_(loop),
    timerfd_(createTimerfd()),
    timerfdChannel_(new Channel(loop_))
{
    timerfdChannel_->setFd(timerfd_);
    timerfdChannel_->setEvents(EPOLLIN | EPOLLET); ////ET or LT？
    timerfdChannel_->setReadHandler(bind(&TimerManager::handleRead,this));
    loop_->addToPoller(timerfdChannel_);
}

////timerMultiset中的元素是之前通过new创建的，所以析构函数中需要进行相应的delete
TimerManager::~TimerManager()
{
    loop_->removeFromPoller(timerfdChannel_);
    close(timerfd_);
    for(Timer* temp:timerMultiset)
        delete temp; 
}

int TimerManager::createTimerfd()
{
    int timerfd = timerfd_create(CLOCK_MONOTONIC,TFD_NONBLOCK | TFD_CLOEXEC);
    if(timerfd<0)
    {
        perror("timerfd_create failed");
        abort();
    }
    return timerfd;
}

void TimerManager::readTimerfd(int timerfd, long long now)
{
  long long howmany;
  ssize_t n = ::read(timerfd, &howmany, sizeof(howmany));
  //LOG << "TimerManager::handleRead() " << howmany << " at " << now;
  if (n != sizeof(howmany))
  {
    LOG << "TimerManager::handleRead() reads " << n << " bytes instead of 8";
  }
}

void TimerManager::resetTimerfd(int timerfd, long long expiration)
{
  // wake up loop by timerfd_settime()
  struct itimerspec newValue;
  struct itimerspec oldValue;
  memset(&newValue, 0, sizeof(newValue));
  memset(&oldValue, 0, sizeof(oldValue));
  newValue.it_value = howMuchTimeFromNow(expiration);
  int ret = ::timerfd_settime(timerfd, 0, &newValue, &oldValue);
  if (ret)
  {
    LOG << "timerfd_settime()";
  }
}

struct timespec TimerManager::howMuchTimeFromNow(long long when)
{
    struct timeval tv;
    gettimeofday(&tv,NULL);
    long long now = tv.tv_sec*1000*1000 + tv.tv_usec;
    long long microseconds = when - now;
    if (microseconds < 100)
    {
        microseconds = 100;
    }
    struct timespec ts;
    ts.tv_sec = static_cast<time_t>(
    microseconds / (1000 * 1000));
    ts.tv_nsec = static_cast<long>(
    (microseconds % (1000 * 1000)) * 1000);
    return ts;
}

std::vector<Timer*> TimerManager::getExpired(long long now)
{
    std::vector<Timer*> expired;
    Timer nowTimer(now);
    std::multiset<Timer*,TimerPtrLess>::iterator iter = timerMultiset.upper_bound(&nowTimer);
    std::copy(timerMultiset.begin(),iter,back_inserter(expired));
    timerMultiset.erase(timerMultiset.begin(),iter);
    return expired;
}


void TimerManager::handleRead()
{
    loop_->assertInLoopThread();

    struct timeval tv;
    gettimeofday(&tv,NULL);
    long long now = tv.tv_sec*1000*1000 + tv.tv_usec;

    readTimerfd(timerfd_,now);

    std::vector<Timer*> expired = getExpired(now);
    for(Timer* it:expired)
    {
        it->timerCallback_();
    }

    reset(expired,now);
}

Timer* TimerManager::addTimer(TimerCallback cb,long long when,double interval)
{
    Timer* timer = new Timer(cb,when,interval);
    loop_->runInLoop(std::bind(&TimerManager::addTimerInLoop,this,timer));
    return timer;
}

void TimerManager::addTimerInLoop(Timer* timer)
{
    loop_->assertInLoopThread();
    if(timerMultiset.empty()||(*timer<*(*(timerMultiset.begin()))))
        resetTimerfd(timerfd_, timer->getTimestamp());
    timerMultiset.insert(timer);
}

void TimerManager::cancelTimer(Timer* timer)
{
    loop_->runInLoop(std::bind(&TimerManager::cancelInLoop,this,timer));
}

void TimerManager::cancelInLoop(Timer* timer)
{
    loop_->assertInLoopThread();
    auto iter = timerMultiset.find(timer);
    if(iter==timerMultiset.end())
        return;
    timerMultiset.erase(iter);
    delete timer;
}

void TimerManager::reset(const std::vector<Timer*>& expired,long long now)
{
    for(Timer* it : expired)
    {
        if(it->repeat())
        {
            it->restart(now);
            timerMultiset.insert(it);
        }
        else{
            delete it;
        }
    }
    if(!timerMultiset.empty())
    {
        resetTimerfd(timerfd_,(*timerMultiset.begin())->getTimestamp());
    }
}




