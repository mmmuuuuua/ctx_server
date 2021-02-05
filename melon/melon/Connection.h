//#ifndef MELON_NET_CONNECTION_H__
//#define MELON_NET_CONNECTION_H__
#pragma once
#include <sys/epoll.h>
#include <functional>
#include <string>
#include <unistd.h>
#include <memory>
//#include "Timer.h"
#include <assert.h>
#include <sys/socket.h>

class EventLoop;
//class TimerNode;
class Channel;

enum ConnectionState
{
    H_CONNECTED = 0,
    H_CONNECTING,
    H_DISCONNECTING,
    H_DISCONNECTED    
};

const __uint32_t DEFAULT_EVENT = EPOLLIN | EPOLLET | EPOLLONESHOT;
const int DEFAULT_EXPIRED_TIME = 60000; // ms

class Connection: public std::enable_shared_from_this<Connection>
{
    public:
        typedef std::function<void(const std::shared_ptr<Connection>&)> ConnectionCallback;
        typedef std::function<void(const std::shared_ptr<Connection>&,std::string*)> MessageCallback;
        Connection();
        Connection(EventLoop *loop,int connfd);
        std::shared_ptr<Channel> getChannel() { return channel_; }
        EventLoop *getLoop() { return loop_; }
        void setConnectionState(ConnectionState s) { connectionState_ = s; }
        void handleClose();
        void handleRead();
        void handleWrite();
		void handleError();
        void connectEstablished();
        void send(std::string& buf);
        void sendInLoop(std::string& message);
        void shutdown();
        void shutdownInLoop();
        void setTcpNoDelay(bool on)
        {
            int optval = on?1:0;
            setsockopt(fd_, SOL_SOCKET, SO_REUSEADDR, &optval, static_cast<socklen_t>(sizeof optval));
        }

        //void linkTimer(std::shared_ptr<TimerNode> mtimer)
        //{
            // shared_ptr重载了bool, 但weak_ptr没有
        //    timer_ = mtimer; 
        //}

        void setConnectionCallback(const ConnectionCallback& cb)
        {
            connectionCallback_ = cb;
        }

        void setMessageCallback(const MessageCallback& cb)
        {
            messageCallback_ = cb;
        }

		int getFd()
		{
			return fd_;
		}

        bool connected(){
            return connectionState_ == H_CONNECTED;
        }

        bool disconnected(){
            return connectionState_ == H_DISCONNECTED;
        }

    private:
        EventLoop* loop_;
        std::shared_ptr<Channel> channel_;
        int fd_;
        std::string inputBuffer_;
        std::string outputBuffer_;
        
        ConnectionState connectionState_;
        //std::weak_ptr<TimerNode> timer_;

        ConnectionCallback connectionCallback_;
        MessageCallback messageCallback_;
};

typedef std::shared_ptr<Connection> ConnectionPtr;
//#endif





