//#ifndef MELON_NET_EVENTLOOP_H__
//#define MELON_NET_EVENTLOOP_H__
#pragma once
#include "base/Thread.h"
#include "Epoll.h"
#include "base/Logging.h"
#include "Channel.h"
#include "Timer.h"
#include "base/CurrentThread.h"
#include "Util.h"
#include <vector>
#include <memory>
#include <functional>
#include<sys/time.h>
#include <iostream>

using namespace std;


class EventLoop
{
public:
    typedef std::function<void()> Functor;
    EventLoop();
    ~EventLoop();
    void loop();
    void quit();
    void runInLoop(Functor&& cb);
    void queueInLoop(Functor&& cb);
    bool isInLoopThread() const { return threadId_ == CurrentThread::tid(); }
    void assertInLoopThread()
    {
        assert(isInLoopThread());
    }
    void shutdown(shared_ptr<Channel> channel)
    {
        shutDownWR(channel->getFd());
    }
    void removeFromPoller(shared_ptr<Channel> channel)
    {
        //shutDownWR(channel->getFd());
        poller_->epoll_del(channel);
    }
    void updatePoller(shared_ptr<Channel> channel, int timeout = 60000)
    {
        poller_->epoll_mod(channel, timeout);
    }
    void addToPoller(shared_ptr<Channel> channel, int timeout = 60000)
    {
        poller_->epoll_add(channel, timeout);
	    //LOG<<timeout;
    }

    void runAt(long long time,Functor cb)
    {
        timerManager_ -> addTimer(std::move(cb),time,0.0);
    }

    void runAfter(double delay,Functor cb)
    {
        struct timeval tv;
        gettimeofday(&tv, NULL);
        long long time = delay*1000*1000 + tv.tv_sec*1000*1000+tv.tv_usec;
        runAt(time,cb);
    }

    void runEvery(double interval,Functor cb)
    {
        struct timeval tv;
        gettimeofday(&tv, NULL);
        long long time = interval*1000*1000 + tv.tv_sec*1000*1000+tv.tv_usec;
        timerManager_ -> addTimer(std::move(cb),time,interval);
    }
    
private:
    bool looping_;
    shared_ptr<Epoll> poller_;
    int wakeupFd_;
    bool quit_;
    bool eventHandling_;
    mutable MutexLock mutex_;
    std::vector<Functor> pendingFunctors_;
    bool callingPendingFunctors_;
    const pid_t threadId_; 
    shared_ptr<Channel> pwakeupChannel_;

    std::unique_ptr<TimerManager> timerManager_;
    
    void wakeup();
    void handleRead();
    void doPendingFunctors();
    void handleConn();
};


//#endif
