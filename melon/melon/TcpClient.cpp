#include "TcpClient.h"

TcpClient::TcpClient(EventLoop* loop,const std::string& ip,const int& port)
    :state_(H_DISCONNECTED),
    loop_(loop),
    ip_(ip),
    port_(port),
    retryDelayMs_(kInitRetryDelayMs),
    connect_(true),
    retry_(false)
{

}

TcpClient::~TcpClient()
{

}

void TcpClient::connect()
{
    //LOG << "TcpClient::connect  connecting to "<< ip_ << port_;
    connect_ = true;
    loop_->runInLoop(std::bind(&TcpClient::startInLoop,this));
}

void TcpClient::disconnect()
{
    connect_ = false;
    {
        MutexLockGuard lock(mutex_);
        if(connection_){
            connection_ -> shutdown();
        }
    }
}

void TcpClient::startInLoop()
{
    loop_->assertInLoopThread();
    assert(state_ == H_DISCONNECTED);
    int ret;
    int sockfd = socket_connect(port_,ip_,ret);
    int Errno = (ret==0)?0:errno;
    switch(Errno)
    {
        case 0:
        case EINPROGRESS:
        case EINTR:
        case EISCONN:
            connecting(sockfd);
			break;

        case EAGAIN:
        case EADDRINUSE:
        case EADDRNOTAVAIL:
        case ECONNREFUSED:
        case ENETUNREACH:
            retry(sockfd);
			break;

        case EACCES:
        case EPERM:
        case EAFNOSUPPORT:
        case EALREADY:
        case EBADF:
        case EFAULT:
        case ENOTSOCK:
            if(close(sockfd)<0)
            {
                LOG << "sockets::close";
            }
            break;

        default:
            if(close(sockfd)<0)
            {
                LOG << "sockets::close";
            }
            break;
    }
}

void TcpClient::connecting(int sockfd)
{
    setState(H_CONNECTING);
    assert(!connectChannel_);
    connectChannel_.reset(new Channel(loop_, sockfd));
    connectChannel_->setWriteHandler(
        std::bind(&TcpClient::handleWrite, this)); 
    connectChannel_->setErrorHandler(
        std::bind(&TcpClient::handleError, this)); 

    connectChannel_->setEvents(EPOLLOUT); //需要加上ET吗？
    loop_->addToPoller(connectChannel_); ///timeout修改
}

void TcpClient::handNewConn(int sockfd)
{
    shared_ptr<Connection> connection(new Connection(loop_,sockfd));
    connection->getChannel()->setHolder(connection);
    connection->setConnectionCallback(connectionCallback_);
    connection->setMessageCallback(messageCallback_);
    {
        MutexLockGuard lock(mutex_);
        connection_ = connection;
    }
    loop_->queueInLoop(std::bind(&Connection::connectEstablished,connection));
}

void TcpClient::handleWrite()
{
    //LOG << "Connector::handleWrite " << state_;
    if(state_ == H_CONNECTING)
    {
        connectChannel_->setEvents(0); 
        connectChannel_->getEventLoop()->removeFromPoller(connectChannel_);
        int sockfd = connectChannel_->getFd();
        loop_->queueInLoop(std::bind(&TcpClient::resetChannel, this));
        int err = getSocketError(sockfd);
        if(err)
        {
            LOG << "Connector::handleWrite - SO_ERROR = "<< err; //<< " " << strerror_tl(err);
            retry(sockfd);
        }
        else
        {
            setState(H_CONNECTED);
            handNewConn(sockfd);
        }
    }
}

void TcpClient::handleError()
{

}

void TcpClient::retry(int sockfd)
{
    if(close(sockfd)<0)
    {
        LOG << "sockets::close";
    }
    setState(H_DISCONNECTED);
    loop_->runAfter(retryDelayMs_/1000.0,std::bind(&TcpClient::startInLoop, shared_from_this()));  ////传递给runAfter的时间单位是s
    retryDelayMs_ = std::min(retryDelayMs_ * 2, kMaxRetryDelayMs);
}