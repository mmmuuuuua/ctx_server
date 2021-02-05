#include "Connection.h"
#include "Channel.h"
#include "Util.h"
#include "EventLoop.h"
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <iostream>

Connection::Connection(EventLoop *loop,int connfd):
        loop_(loop),
        channel_(new Channel(loop,connfd)),
        fd_(connfd),
        connectionState_(H_CONNECTING)
{
    channel_->setReadHandler(std::bind(&Connection::handleRead,this));
    channel_->setWriteHandler(std::bind(&Connection::handleWrite,this));
    channel_->setCloseHandler(std::bind(&Connection::handleClose,this));
    channel_->setErrorHandler(std::bind(&Connection::handleError,this));
}

void Connection::connectEstablished()
{
    assert(connectionState_==H_CONNECTING);
    setConnectionState(H_CONNECTED);
    channel_->tie(shared_from_this());
    channel_->setEvents(DEFAULT_EVENT);
    loop_->addToPoller(channel_, DEFAULT_EXPIRED_TIME);
    connectionCallback_(shared_from_this());
}

void Connection::handleClose()
{
    connectionState_ = H_DISCONNECTED;
    //关闭连接之后同样调用connectionCallback_
    connectionCallback_(shared_from_this());
    std::shared_ptr<Connection> guard(shared_from_this());
    loop_->removeFromPoller(channel_);
    LOG << "Connection closed, fd is: " << getFd();
}

void Connection::handleRead()
{
    loop_->assertInLoopThread();
    //int savedErrno = 0;
    bool zero = false;
    int read_num = readn(fd_, inputBuffer_, zero);
    //ssize_t n = inputBuffer_.readFd(channel_->fd(), &savedErrno);
    if (read_num > 0)
    {
        messageCallback_(shared_from_this(), &inputBuffer_);
    }
    else if (read_num == 0)
    {
        handleClose();
    }
    else
    {
        ////什么都不做，只是打印错误消息
        perror("TcpConnection::handleRead error");
    }
}

void Connection::handleWrite()
{
  loop_->assertInLoopThread();
  __uint32_t& LastEvents = channel_->getLastEvents();
  __uint32_t &events_ = channel_->getEvents();
  events_ |= EPOLLOUT;
  if (LastEvents&EPOLLOUT)
  {
    int nwrote = writen(fd_, outputBuffer_);
    if (nwrote > 0)
    {
      if(outputBuffer_.empty())
      {
          events_&=~EPOLLOUT;
          if(connectionState_==H_DISCONNECTING)
          {
              shutdownInLoop();
          }
      }
    }
    else
    {
      perror("TcpConnection::handleWrite1");
    }
  }
  else
  {
      perror("TcpConnection::handleWrite2");
  }
}


void Connection::send(std::string& buf)
{
  if (connectionState_ == H_CONNECTED)
  {
    if (loop_->isInLoopThread())
    {
      //sendInLoop(buf->peek(), buf->readableBytes());
      sendInLoop(buf);
      //buf->retrieveAll();
      buf.clear();//要么全部发送给客户端，要么剩余的部分全部发送到发送缓冲区，所以这里清空
    }
    else
    {
      void (Connection::*fp)(std::string& message) = &Connection::sendInLoop;
      loop_->runInLoop(
          std::bind(fp,
                    this,    
                    buf));
    }
  }
}

void Connection::sendInLoop(std::string& message)
{
  loop_->assertInLoopThread();
  ssize_t nwrote = 0;
  size_t remaining = message.size();
  int len = message.size();
  bool faultError = false;
  if(connectionState_==H_DISCONNECTED)
  {
      perror("disconnected, give up writing");
      ///此处还应输出警告信息
      return;
  }
  __uint32_t& LastEvents = channel_->getLastEvents();
  __uint32_t &events_ = channel_->getEvents();
  if(!(LastEvents & EPOLLOUT)&&outputBuffer_.empty())
  {
      nwrote = writen(fd_, message);
      if (nwrote>= 0)
      {
          remaining = len - nwrote;
          //if (remaining == 0 && writeCompleteCallback_)
          //{
            //  loop_->queueInLoop(std::bind(writeCompleteCallback_, shared_from_this()));
          //}
      }
      else
      {
          nwrote = 0;
          if (errno != EWOULDBLOCK)
          {
              perror("TcpConnection::sendInLoop");
              //LOG_SYSERR << "TcpConnection::sendInLoop";
              if (errno == EPIPE || errno == ECONNRESET) // FIXME: any others?
              {
              faultError = true;
              }
          }
      }
	}
	
	assert(remaining <= len);
	if (!faultError && remaining > 0)
	{
		outputBuffer_.append(message);
		//if (!(LastEvents&EPOLLOUT))
		events_ |= EPOLLOUT;
	}
    
}

void Connection::shutdown()
{
  if(connectionState_==H_CONNECTED)
  {
      setConnectionState(H_DISCONNECTING);
      loop_->runInLoop(std::bind(&Connection::shutdownInLoop,this));
  }
}

void Connection::shutdownInLoop()
{
  loop_->assertInLoopThread();
  __uint32_t &events_ = channel_->getEvents();  ///events_待修改
  if(!(events_&EPOLLOUT))  ///events_待修改
  {
    if (::shutdown(fd_, SHUT_WR) < 0)
    {
      perror("Connection::shutdownInLoop");
    } 
  } 
}

void Connection::handleError()
{
  perror("handleError");
  return;
}
