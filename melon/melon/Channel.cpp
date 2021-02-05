#include "Channel.h"
#include "Util.h"
#include "Epoll.h"
#include "EventLoop.h"
#include <unistd.h>
#include <queue>
#include <cstdlib>
#include <iostream>
using namespace std;

Channel::Channel(EventLoop *loop):
    loop_(loop),
    events_(0),
    lastEvents_(0),
    tied_(false),
    eventHandling_(false)
{ }

Channel::Channel(EventLoop *loop, int fd):
    loop_(loop),
    fd_(fd), 
    events_(0),
    lastEvents_(0),
    tied_(false),
    eventHandling_(false)
{ }

Channel::~Channel()
{
    //loop_->poller_->epoll_del(fd, events_);
    //close(fd_);
}

int Channel::getFd()
{
    return fd_;
}
void Channel::setFd(int fd)
{
    fd_ = fd;
}

void Channel::handleRead()
{
    if (readHandler_)
    {
        readHandler_();
    }
}

void Channel::handleWrite()
{
    if (writeHandler_)
    {
        writeHandler_();
    }
}

void Channel::handleClose()
{
    if (closeHandler_)
    {
        closeHandler_();
    }
}

void Channel::handleError()
{
    if (errorHandler_)
    {
        errorHandler_();
    }
}

void Channel::tie(const std::shared_ptr<void>& obj)
{
  tie_ = obj;
  tied_ = true;
}

void Channel::handleEvent()
{
    std::shared_ptr<void> guard;
    if (tied_)
    {
        guard = tie_.lock();
        if (guard)
        {
        handleEventWithGuard();
        }
    }
    else
    {
        handleEventWithGuard();
    }
}

void Channel::handleEventWithGuard()
{
    eventHandling_ = true;
    //LOG_TRACE << reventsToString();
    if ((revents_ & EPOLLHUP) && !(revents_ & EPOLLIN))
    {
        if (closeHandler_) handleClose();
    }
    if (revents_ & EPOLLERR)
    {
        if (errorHandler_) handleError();
    }
    if (revents_ & (EPOLLIN | EPOLLPRI | EPOLLRDHUP))
    {
        if (readHandler_) handleRead();
    }
    if (revents_ & EPOLLOUT)
    {
        if (writeHandler_) handleWrite();
    }
    
    std::shared_ptr<Connection> holder = getHolder();
    if(holder != NULL && holder -> connected()){
        events_ |= (EPOLLIN | EPOLLET | EPOLLONESHOT);
        std::shared_ptr<Channel> guard(shared_from_this());
        loop_->updatePoller(guard); //epoll中已经被delete的fd还能被update吗？epoll_ctl返回负数吗？
    }
    eventHandling_ = false;
}