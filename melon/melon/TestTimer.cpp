#include "EventLoop.h"
#include "Server.h"
#include "base/Logging.h"
#include <getopt.h>
#include <string>

int main(int argc, char *argv[])
{
    int threadNum = 4;
    int port = 80;
    std::string logPath = "./WebServer.log";

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
    Server myHTTPServer(&mainLoop, threadNum, port);
    myHTTPServer.setConnectionCallback([](const std::shared_ptr<Connection>& conn)
                {
                    LOG<<"ojbk:"<<conn->getFd();
                });
    myHTTPServer.setMessageCallback([](const std::shared_ptr<Connection>& conn,string* str)
                {
                    LOG << "message:" << *str;
                    conn -> send(*str);
                    
                    auto runAfterFunc = [](){
                        printf("runAfterFunc\n");
                    };

                    auto runEveryFunc = [](){
                        printf("runEveryFunc\n");
                    };

                    conn -> getLoop() -> runAfter(10, runAfterFunc);

                    conn -> getLoop() -> runEvery(5, runEveryFunc);
                });
    myHTTPServer.start();
    mainLoop.loop();
    return 0;
}




