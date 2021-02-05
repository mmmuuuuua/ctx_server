#pragma once
#include <string>
#include <memory>
#include <vector>
#include "base/Atomic.h"
#include "EventLoop.h"
#include "Connection.h"
#include "EventLoopThreadPool.h"
#include "TcpClient.h"

class Client
{
    public:
        Client(EventLoop* loop, const std::string& ip, int port, PingPongClient* pingPongClient):
            client_(new TcpClient(loop, ip, port)),
            ower_(pingPongClient),
            bytesRead_(0),
            bytesWritten_(0),
            messagesRead_(0)
        {
            client_ -> setConnectionCallback(
                std::bind(&onConnection, this, std::placeholders::_1));
            client_ -> setMessageCallback(
                std::bind(&onMessage, this, std::placeholders::_1, std::placeholders::_2)
            );
        }

        void start()
        {
            client_ -> connect();
        }

        void stop()
        {
            client_ -> disconnect();
        }

        int64_t bytesRead(){
            return bytesRead_;
        }

        int64_t bytesWritten(){
            return bytesWritten_;
        }

        int64_t messagesRead(){
            return messagesRead_;
        }
        
    private: 
        void onMessage(const std::shared_ptr<Connection>& conn,std::string* str)
        {
            ++messagesRead_;
            LOG << "inputBuffer size :" << str -> size();
            bytesRead_ += str -> size();
            bytesWritten_ += str -> size();
            conn -> send(*str);
        }

        void onConnection(const std::shared_ptr<Connection>& conn)
        {
            if(conn -> connected())
            {
                conn -> setTcpNoDelay(true);
                std::string sendMessage;
                for (int i = 0; i < 16000; ++i)
                {
                    sendMessage.push_back(static_cast<char>(i % 128));
                }
                conn -> send(sendMessage);
                if (numConnected_.incrementAndGet() == tcpClientCount_)
                {
                    LOG << "all connected";
                }
            }
            else
            {
                LOG << "disconnected, the fd is: " << conn -> getFd();
                if(numConnected_.decrementAndGet() == 0){
                    LOG << "all disconnected";

                    LOG << bytesRead_ << " total bytes read";
                    LOG << messagesRead_ << " total messages read";
                    LOG << static_cast<double>(bytesRead_) / static_cast<double>(messagesRead_)
                            << " average message size";
                    LOG << static_cast<double>(bytesRead_) / (5 * 1024 * 1024)
                            << " MiB/s throughput";
                    conn -> getLoop() -> queueInLoop(std::bind(&EventLoop::quit, loop_));
                }
            }
        }

        std::shared_ptr<TcpClient> client_;
        PingPongClient* ower_;
        int64_t bytesRead_;
        int64_t bytesWritten_;
        int64_t messagesRead_;
};

class PingPongClient
{
    public:
        PingPongClient(EventLoop* loop,int threadCount,int tcpClientCount,const std::string& ip,const int& port);
    private:
		void handleTimeout();
	
        EventLoop* loop_;
        EventLoopThreadPool threadPool_;
        int tcpClientCount_;
        std::vector<std::shared_ptr<Client>> clients_;
        std::string message_;
        AtomicInt32 numConnected_;

        std::string ip_;
        int port_;

		int64_t totalBytesRead_;
		int64_t totalBytesWritten_;
		int64_t totalMessagesRead_;
};

PingPongClient::PingPongClient(EventLoop* loop,int threadCount,int tcpClientCount,const std::string& ip,const int& port)
    :loop_(loop),
    threadPool_(loop_,threadCount),
    tcpClientCount_(tcpClientCount),
    ip_(ip),
    port_(port),
    totalBytesRead_(0),
    totalBytesWritten_(0),
    totalMessagesRead_(0)
{
	//定时器时间
	loop_ -> runAfter(5, std::bind(&PingPongClient::handleTimeout, this));
	
    threadPool_.start();
    for(int i=0;i<tcpClientCount_;i++)
    {
        std::shared_ptr<Client> client = std::make_shared<Client>(threadPool_.getNextLoop(), ip_, port_, this);
        client -> start();
        clients_.emplace_back(client);
    }
}

void PingPongClient::handleTimeout()
{
    for(int i = 0; i < tcpClientCount_; i++){
        clients_[i] -> stop();
    }	

    for(int i = 0; i < tcpClientCount_; i++){
        totalBytesRead_ += clients_[i] -> bytesRead();
        totalMessagesRead_ += clients_[i] -> messagesRead();
    }

    LOG << totalBytesRead_ << " total bytes read";
    LOG << totalMessagesRead_ << " total messages read";
    LOG << static_cast<double>(totalBytesRead_) / static_cast<double>(totalMessagesRead_)
            << " average message size";
    LOG << static_cast<double>(totalBytesRead_) / (5 * 1024 * 1024)
            << " MiB/s throughput";
}

int main(int argc, char *argv[])
{
    int threadNum = 4;
    int port = 80;
    std::string logPath = "./WebClient.log";

    // parse args
    int opt;
    const char *str = "t:l:p:";
    while ((opt = getopt(argc, argv, str))!= -1)
    {
        switch (opt)
        {
            case 't':
            {
                threadNum = atoi(optarg);
                break;
            }
            case 'l':
            {
                logPath = optarg;
                if (logPath.size() < 2 || optarg[0] != '/')
                {
                    printf("logPath should start with \"/\"\n");
                    abort();
                }
                break;
            }
            case 'p':
            {
                port = atoi(optarg);
                break;
            }
            default: break;
        }
    }
    Logger::setLogFileName(logPath);

    // STL库在多线程上应用
    #ifndef _PTHREADS
        LOG << "_PTHREADS is not defined !";
    #endif

    EventLoop mainLoop;
    std::string ip = "127.0.0.1";
    PingPongClient pingPongClient(&mainLoop, 4, 100, ip, port);
    mainLoop.loop();
    
    return 0;
}