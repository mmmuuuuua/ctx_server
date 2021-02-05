//#ifndef MELON_NET_TIMER_H__
//#define MELON_NET_TIMER_H__
#pragma once
#include "Channel.h"
//#include "EventLoop.h"
#include <unistd.h>
#include <memory>
#include <queue>
#include <deque>
#include <functional>
#include <set>

class EventLoop;

class Timer
{
    public:
        typedef std::function<void()> TimerCallback;     
        Timer(TimerCallback cb,long long timestamp,double interval):
            timerCallback_(cb),
            timestamp_(timestamp),
            interval_(interval),
            repeat_(interval>0)
            //sequence_(s_numCreated_.incrementAndGet())
        {

        }

        Timer(long long timestamp):
            timestamp_(timestamp)
        {

        }

        bool operator<(const Timer& timer) const
        {
            return timestamp_<timer.timestamp_;
        }

        void restart(long long now)
        {
            if(repeat_)
                timestamp_ = now + interval_*1000*1000;
            else
                timestamp_ = 0;
        }

        bool repeat() const
        {
            return repeat_;
        }

        long long getTimestamp() const
        {
            return timestamp_;
        }

        TimerCallback timerCallback_;

    private:
        long long timestamp_;
        //const double interval_;
		double interval_;
        bool repeat_;

        //const int64_t sequence_;
        //static AtomicInt64 s_numCreated_;
};

class TimerManager
{
    public:
        struct TimerPtrLess : public std::binary_function<const Timer*, const Timer*, bool>{
            bool operator()(const Timer* ps1, const Timer* ps2) const{
                return (*ps1).getTimestamp() < (*ps2).getTimestamp();
            }
        };

        typedef std::function<void()> TimerCallback;  
        TimerManager(EventLoop* loop);
        ~TimerManager();
        int createTimerfd();
        void readTimerfd(int timerfd, long long now);
        void resetTimerfd(int timerfd, long long expiration);
        struct timespec howMuchTimeFromNow(long long when);
        
        std::vector<Timer*> getExpired(long long now);
        void handleRead();
        void reset(const std::vector<Timer*>& expired,long long now);
        Timer* addTimer(TimerCallback cb,long long when,double interval);
        void addTimerInLoop(Timer* timer);
        //void insert(Timer* timer);
        void cancelTimer(Timer* timer);
        void cancelInLoop(Timer* timer);
    private:
        std::multiset<Timer*,TimerPtrLess> timerMultiset;
        EventLoop* loop_;
        const int timerfd_;
        std::shared_ptr<Channel> timerfdChannel_;
};



//#endif
