//#ifndef MELON_NET_CHANNEL_H__
//#define MELON_NET_CHANNEL_H__
#pragma once
//#include "Timer.h"
#include <string>
#include <unordered_map>
#include <memory>
#include <sys/epoll.h>
#include <functional>
#include <sys/epoll.h>


class EventLoop;
class Connection;

class Channel: public std::enable_shared_from_this<Channel>
{
private:
    typedef std::function<void()> CallBack;
    EventLoop *loop_;
    int fd_;
    __uint32_t events_;
    __uint32_t revents_;
    __uint32_t lastEvents_;

    std::weak_ptr<void> tie_;
    bool tied_;
    bool eventHandling_;

    // 方便找到上层持有该Channel的对象
    std::weak_ptr<Connection> holder_;

private:
    int parse_URI();
    int parse_Headers();
    int analysisRequest();

    CallBack readHandler_;
    CallBack writeHandler_;
    CallBack errorHandler_;
    CallBack closeHandler_;

public:
    Channel(EventLoop *loop);
    Channel(EventLoop *loop, int fd);
    ~Channel();
    int getFd();
    void setFd(int fd);
    void tie(const std::shared_ptr<void>&);
    void handleEvent();
    void handleEventWithGuard();

    void setHolder(std::shared_ptr<Connection> holder)
    {
        holder_ = holder;
    }
    std::shared_ptr<Connection> getHolder()
    {
        std::shared_ptr<Connection> ret(holder_.lock());
        return ret;
    }

    void setReadHandler(CallBack &&readHandler)
    {
        readHandler_ = readHandler;
    }
    void setWriteHandler(CallBack &&writeHandler)
    {
        writeHandler_ = writeHandler;
    }
    void setErrorHandler(CallBack &&errorHandler)
    {
        errorHandler_ = errorHandler;
    }
    void setCloseHandler(CallBack &&closeHandler)
    {
        closeHandler_ = closeHandler;
    }

    void handleRead();
    void handleWrite();
    //void handleError(int fd, int err_num, std::string short_msg);
    void handleError();
    void handleClose();

    void setRevents(__uint32_t ev)
    {
        revents_ = ev;
    }

    void setEvents(__uint32_t ev)
    {
        events_ = ev;
    }
    __uint32_t& getEvents()
    {
        return events_;
    }

    bool EqualAndUpdateLastEvents()
    {
        bool ret = (lastEvents_ == events_);
        lastEvents_ = events_;
        return ret;
    }

    __uint32_t& getLastEvents()
    {
        return lastEvents_;
    }

    EventLoop* getEventLoop() const{
        return loop_;
    }
};

typedef std::shared_ptr<Channel> SP_Channel;

//#endif
