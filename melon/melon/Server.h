//#ifndef MELON_NET_SERVER_H__
//#define MELON_NET_SERVER_H__
#pragma once
#include "EventLoop.h"
#include "Channel.h"
#include "EventLoopThreadPool.h"
#include <memory>
#include <functional>

class Server
{
public:
    typedef std::function<void(const std::shared_ptr<Connection>&)> ConnectionCallback;
    typedef std::function<void(const std::shared_ptr<Connection>&,string*)> MessageCallback;
    Server(EventLoop *loop, int threadNum, int port);
    ~Server() { }
    EventLoop* getLoop() const { return loop_; }
    void start();
    void handNewConn();
    void handThisConn() { loop_->updatePoller(acceptChannel_); }

    void setConnectionCallback(const ConnectionCallback& cb)
    {
        connectionCallback_ = cb;
    }
    void setMessageCallback(const MessageCallback& cb)
    {
        messageCallback_ = cb;
    }
private:
    EventLoop *loop_;
    int threadNum_;
    std::unique_ptr<EventLoopThreadPool> eventLoopThreadPool_;
    bool started_;
    std::shared_ptr<Channel> acceptChannel_;
    int port_;
    int listenFd_;
    static const int MAXFDS = 100000;

    ConnectionCallback connectionCallback_;
    MessageCallback messageCallback_;
};

//#endif
