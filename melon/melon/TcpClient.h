#pragma once
#include <functional>
#include "EventLoop.h"
#include "Connection.h"
#include "Channel.h"
#include "base/MutexLock.h"
#include "Util.h"
#include <string>
#include <memory>

class TcpClient: public std::enable_shared_from_this<TcpClient>
{
    public:
        typedef std::function<void(const std::shared_ptr<Connection>&)> ConnectionCallback;
        typedef std::function<void(const std::shared_ptr<Connection>&, string*)> MessageCallback;
        TcpClient(EventLoop* loop,const std::string& ip,const int& port);
        ~TcpClient();

        void setConnectionCallback(const ConnectionCallback& cb)
        {
            connectionCallback_ = cb;
        }
        void setMessageCallback(const MessageCallback& cb)
        {
            messageCallback_ = cb;
        }

        void connect();
        void disconnect();
        void startInLoop();
        void connecting(int sockfd);
        void handNewConn(int sockfd);
        void retry(int sockfd);
        void handleWrite();
        void handleError();

        void resetChannel()
        {
            connectChannel_.reset();
        }
    private:
        enum ConnectionState
        {
            H_CONNECTED = 0,
            H_CONNECTING,
            H_DISCONNECTED 
        };
        static const int kMaxRetryDelayMs = 30000;
        static const int kInitRetryDelayMs = 500;

        void setState(ConnectionState state){
            state_ = state;
        }

        ConnectionState state_;
        EventLoop* loop_;
        std::string ip_;
        int port_;
        std::shared_ptr<Channel> connectChannel_;
        //bool connect_;
        std::shared_ptr<Connection> connection_;
        int retryDelayMs_;
        mutable MutexLock mutex_;

        bool retry_;
        bool connect_;

        ConnectionCallback connectionCallback_;
        MessageCallback messageCallback_;
};

