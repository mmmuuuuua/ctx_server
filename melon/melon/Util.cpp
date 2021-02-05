#include "Util.h"
#include <unistd.h>
#include <fcntl.h>
#include <signal.h>
#include <errno.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <arpa/inet.h>  
#include "base/Logging.h"

const int MAX_BUFF = 4096;

ssize_t readn(int fd, void *buff, size_t n)
{
    size_t nleft = n;
    ssize_t nread = 0;
    ssize_t readSum = 0;
    char *ptr = (char*)buff;
    while (nleft > 0)
    {
        if ((nread = read(fd, ptr, nleft)) < 0)
        {
            if (errno == EINTR)
                nread = 0;
            else if (errno == EAGAIN)
            {
                return readSum;
            }
            else
            {
                return -1;
            }  
        }
        else if (nread == 0)
            break;
        readSum += nread;
        nleft -= nread;
        ptr += nread;
    }
    return readSum;
}

ssize_t readn(int fd, std::string &inBuffer, bool &zero)
{
    ssize_t nread = 0;
    ssize_t readSum = 0;
    while (true)
    {
        char buff[MAX_BUFF];
        if ((nread = read(fd, buff, MAX_BUFF)) < 0)
        {
            if (errno == EINTR)
                continue;
            else if (errno == EAGAIN)
            {
                //LOG << "read num:" << readSum << "errno :" << errno;
                return readSum;
            }  
            else
            {
                perror("read error");
                return -1;
            }
        }
        else if (nread == 0)
        {
            //printf("redsum = %d\n", readSum);
            zero = true;
            break;
        }
        //printf("before inBuffer.size() = %d\n", inBuffer.size());
        //printf("nread = %d\n", nread);
        readSum += nread;
        //buff += nread;
        inBuffer += std::string(buff, buff + nread);
        //printf("after inBuffer.size() = %d\n", inBuffer.size());
    }
    //LOG << "read num:" << readSum << "errno :" << errno;
    return readSum;
}

/*
ssize_t readn(int fd,std::string& inBuffer,int* savedErrno)
{
    ssize_t nread = 0;
    ssize_t readSum = 0;
    while (true)
    {
        char buff[MAX_BUFF];
        if ((nread = read(fd, buff, MAX_BUFF)) < 0)
        {
            if (errno == EINTR)
                continue;
            else if (errno == EAGAIN)
            {
                *savedErrno = errno;
                return readSum;
            }  
            else
            {
                *savedErrno = errno;
                perror("read error");
                return -1;
            }
        }
        else if (nread == 0)
        {
            break;
        }
        //printf("before inBuffer.size() = %d\n", inBuffer.size());
        //printf("nread = %d\n", nread);
        readSum += nread;
        //buff += nread;
        inBuffer += std::string(buff, buff + nread);
        //printf("after inBuffer.size() = %d\n", inBuffer.size());
    }
    return readSum;
}
*/

ssize_t readn(int fd, std::string &inBuffer)
{
    ssize_t nread = 0;
    ssize_t readSum = 0;
    while (true)
    {
        char buff[MAX_BUFF];
        if ((nread = read(fd, buff, MAX_BUFF)) < 0)
        {
            if (errno == EINTR)
                continue;
            else if (errno == EAGAIN)
            {
                return readSum;
            }  
            else
            {
                perror("read error");
                return -1;
            }
        }
        else if (nread == 0)
        {
            //printf("redsum = %d\n", readSum);
            break;
        }
        //printf("before inBuffer.size() = %d\n", inBuffer.size());
        //printf("nread = %d\n", nread);
        readSum += nread;
        //buff += nread;
        inBuffer += std::string(buff, buff + nread);
        //printf("after inBuffer.size() = %d\n", inBuffer.size());
    }
    return readSum;
}


ssize_t writen(int fd, void *buff, size_t n)
{
    size_t nleft = n;
    ssize_t nwritten = 0;
    ssize_t writeSum = 0;
    char *ptr = (char*)buff;
    while (nleft > 0)
    {
        if ((nwritten = write(fd, ptr, nleft)) <= 0)
        {
            if (nwritten < 0)
            {
                if (errno == EINTR)
                {
                    nwritten = 0;
                    continue;
                }
                else if (errno == EAGAIN)
                {
                    return writeSum;
                }
                else
                    return -1;
            }
        }
        writeSum += nwritten;
        nleft -= nwritten;
        ptr += nwritten;
    }
    return writeSum;
}

ssize_t writen(int fd, std::string &sbuff)
{
    size_t nleft = sbuff.size();
    ssize_t nwritten = 0;
    ssize_t writeSum = 0;
    const char *ptr = sbuff.c_str();
    while (nleft > 0)
    {
        if ((nwritten = write(fd, ptr, nleft)) <= 0)
        {
            if (nwritten < 0)
            {
                if (errno == EINTR)
                {
                    nwritten = 0;
                    continue;
                }
                else if (errno == EAGAIN)
                    break;
                else
                    return -1;
            }
        }
        writeSum += nwritten;
        nleft -= nwritten;
        ptr += nwritten;
    }
    if (writeSum == static_cast<int>(sbuff.size()))
        sbuff.clear();
    else
        sbuff = sbuff.substr(writeSum);

    //LOG << "write num:" << writeSum << "errno :" << errno;
    return writeSum;
}

void handle_for_sigpipe()
{
    struct sigaction sa;
    memset(&sa, '\0', sizeof(sa));
    sa.sa_handler = SIG_IGN;
    sa.sa_flags = 0;
    if(sigaction(SIGPIPE, &sa, NULL))
        return;
}

int setSocketNonBlocking(int fd)
{
    int flag = fcntl(fd, F_GETFL, 0);
    if(flag == -1)
        return -1;

    flag |= O_NONBLOCK;
    if(fcntl(fd, F_SETFL, flag) == -1)
        return -1;
    return 0;
}

void setSocketNodelay(int fd) 
{
    int enable = 1;
    setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, (void*)&enable, sizeof(enable));
}

void setSocketNoLinger(int fd) 
{
    struct linger linger_;
    linger_.l_onoff = 1;
    linger_.l_linger = 30;
    setsockopt(fd, SOL_SOCKET, SO_LINGER,(const char *) &linger_, sizeof(linger_));
}

void shutDownWR(int fd)
{
    shutdown(fd, SHUT_WR);
    //printf("shutdown\n");
}

//
int getSocketError(int sockfd)
{
    int optval;
    socklen_t optlen = static_cast<socklen_t>(sizeof(optval));
    if(getsockopt(sockfd,SOL_SOCKET,SO_ERROR,&optval,&optlen)<0)
        return errno;
    else
        return optval;
}


int socket_bind_listen(int port)
{
    // 检查port值，取正确区间范围
    if (port < 0 || port > 65535)
        return -1;

    // 创建socket(IPv4 + TCP)，返回监听描述符
    int listen_fd = 0;
    if((listen_fd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
        return -1;

    // 消除bind时"Address already in use"错误
    int optval = 1;
    if(setsockopt(listen_fd, SOL_SOCKET,  SO_REUSEADDR, &optval, sizeof(optval)) == -1)
        return -1;

    // 设置服务器IP和Port，和监听描述副绑定
    struct sockaddr_in server_addr;
    bzero((char*)&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server_addr.sin_port = htons((unsigned short)port);
    if(bind(listen_fd, (struct sockaddr *)&server_addr, sizeof(server_addr)) == -1)
        return -1;

    // 开始监听，最大等待队列长为LISTENQ
    if(listen(listen_fd, 2048) == -1)
        return -1;

    // 无效监听描述符
    if(listen_fd == -1)
    {
        close(listen_fd);
        return -1;
    }
    return listen_fd;
}

//非阻塞的connect
//由于connect的返回值比较复杂，该函数没有处理connect的各种返回值，需要返回到上层函数处理。
int socket_connect(int port,std::string& ip,int& ret)
{
    // 检查port值，取正确区间范围
    if(port<0||port>65535)
        return -1;
    // 创建socket(IPv4 + TCP)，返回监听描述符
    int conn_fd = 0;
    if((conn_fd = socket(AF_INET,SOCK_STREAM,0)) == -1)
        return -1;
    
    //设置非阻塞
    int flags = fcntl(conn_fd,F_GETFL,0);
    flags |= O_NONBLOCK;
    int res = fcntl(conn_fd,F_SETFL,flags);

    //设置close-on-exec
    flags = fcntl(conn_fd,F_GETFD,0);
    flags |= FD_CLOEXEC;
    res = fcntl(conn_fd,F_SETFD,flags);

    //设置connect的服务器的ip和port
    struct sockaddr_in server_addr;
    bzero((char*)&server_addr,sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    inet_pton(AF_INET, ip.c_str(), &server_addr.sin_addr);
    server_addr.sin_port = htons((unsigned)port);

    ret = connect(conn_fd,(struct sockaddr*)&server_addr,sizeof(server_addr));
    return conn_fd;
}



///Udp server
int udp_socket_bind(int port)
{
    if(port<0||port>65535)
        return -1;

    int udp_fd=0;
    if((udp_fd = socket(AF_INET,SOCK_DGRAM,0))==-1)
        return -1;
    
    int optval = 1;
    if(setsockopt(udp_fd,SOL_SOCKET,SO_REUSEADDR,&optval,sizeof(optval))==-1)
        return -1;

    if(setsockopt(udp_fd,SOL_SOCKET,SO_REUSEPORT,&optval,sizeof(optval))==-1)   
        return -1;

    //设置close-on-exec
    int flags = fcntl(udp_fd,F_GETFD,0);
    flags |= FD_CLOEXEC;
    int res = fcntl(udp_fd,F_SETFD,flags);

    struct sockaddr_in server_addr;
    bzero((char*)&server_addr,sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server_addr.sin_port = htons((unsigned short)port);

    if(bind(udp_fd,(struct sockaddr*)&server_addr,sizeof(server_addr))==-1)
        return -1;

    return udp_fd;
}

///Udp client
int udp_socket_connect(int port,std::string& ip)
{
    if(port<0||port>65535)
        return -1;

    int udp_conn_fd = 0;
    if((udp_conn_fd = socket(AF_INET,SOCK_DGRAM,0))==-1)
        return -1;

    //设置非阻塞
    int flags = fcntl(udp_conn_fd,F_GETFL,0);
    flags |= O_NONBLOCK;
    int res = fcntl(udp_conn_fd,F_SETFL,flags);

    //设置close-on-exec
    flags = fcntl(udp_conn_fd,F_GETFD,0);
    flags |= FD_CLOEXEC;
    res = fcntl(udp_conn_fd,F_SETFD,flags);

    //设置connect的服务器的ip和port
    struct sockaddr_in server_addr;
    bzero((char*)&server_addr,sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    inet_pton(AF_INET, ip.c_str(), &server_addr.sin_addr);
    server_addr.sin_port = htons((unsigned)port);

    int ret = connect(udp_conn_fd,(struct sockaddr*)&server_addr,sizeof(server_addr));
    return udp_conn_fd;
}
