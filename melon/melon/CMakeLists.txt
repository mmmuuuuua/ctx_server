set(SRCS_MAIN
    Buffer.cpp
    Channel.cpp
    Connection.cpp
    Epoll.cpp
    EventLoop.cpp
    EventLoopThread.cpp
    EventLoopThreadPool.cpp
    Main.cpp
    Server.cpp
    TcpClient.cpp
    #ThreadPool.cpp
    Timer.cpp
    Util.cpp
	#melon_queue.cpp
	#PingPongClient.cpp
)

set(SRCS_TIMERTEST
    Buffer.cpp
    Channel.cpp
    Connection.cpp
    Epoll.cpp
    EventLoop.cpp
    EventLoopThread.cpp
    EventLoopThreadPool.cpp
    TestTimer.cpp
    Server.cpp
    TcpClient.cpp
    #ThreadPool.cpp
    Timer.cpp
    Util.cpp
	#melon_queue.cpp
	#PingPongClient.cpp
)

set(SRCS_PINGPONGCLIENT
    Buffer.cpp
    Channel.cpp
    Connection.cpp
    Epoll.cpp
    EventLoop.cpp
    EventLoopThread.cpp
    EventLoopThreadPool.cpp
    #TestTimer.cpp
    Server.cpp
    TcpClient.cpp
    #ThreadPool.cpp
    Timer.cpp
    Util.cpp
	#melon_queue.cpp
	PingPongClient.cpp
)

include_directories(${PROJECT_SOURCE_DIR}/base)


add_executable(WebServer ${SRCS_MAIN})
target_link_libraries(WebServer libserver_base)

add_executable(TimerTest ${SRCS_TIMERTEST})
target_link_libraries(TimerTest libserver_base)

add_executable(PingPongClient ${SRCS_PINGPONGCLIENT})
target_link_libraries(PingPongClient libserver_base)

add_subdirectory(base)
add_subdirectory(tests)