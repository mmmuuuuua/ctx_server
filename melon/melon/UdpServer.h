//#ifndef MELON_NET_UDPSERVER_H__
//#define MELON_NET_UDPSERVER_H__
#pragma once

//#endif


class UdpServer
{
    public:
        typedef std::function<void(std::string*)> MessageCallback;
        UdpServer();
        ~UdpServer();
        void start();
        void send(std::string& buf);
        void handleRead();
        void setMessageCallback(const MessageCallback& cb)
        {
            messageCallback_ = cb;
        }
    private:
        EventLoop *loop_;
        int udpFd_;
        int port_;
        std::shared_ptr<Channel> udpChannel_;

        MessageCallback messageCallback_;
}

UdpServer:UdpServer(EventLoop *loop,int port):
        port_(port),
        loop_(loop),
        udpChannel_(new Channel(loop_))
{
    if((udpFd_ = udp_socket_bind(port_))==-1)
    {
        LOG<<"udp_socket_bind faild:"<<port_;
        abort();  ////需要修改，讨论各种错误情况的处理方式
    }
    udpChannel_->setFd(udpFd_);
    if (setSocketNonBlocking(udpFd_) < 0)
    {
        perror("set socket non block failed");
        abort();
    }
}

void UdpServer::start()
{
    udpChannel_->setEvents(EPOLLIN | EPOLLET);
    udpChannel_->setReadHandler(bind(&UdpServer::handleRead, this));
    //acceptChannel_->setConnHandler(bind(&Server::handThisConn, this));
    loop_->addToPoller(udpChannel_, 0);
}

void UdpServer::send(std::string& buf)
{

}

void UdpServer::handleRead()
{

}