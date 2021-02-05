

class UdpClient
{
    public:
        typedef std::function<void(const std::string*)> MessageCallback;
        UdpClient();
        ~UdpClient();

        void createConnect();

        void connect();
        void setMessageCallback(const MessageCallback& cb)
        {
            messageCallback_ = cb;
        }
    private:
        EventLoop* loop_;
        std::shared_ptr<Channel> connectChannel_;
        std::string ip_;
        int port_;

        MessageCallback messageCallback_;
}

UdpClient::UdpClient()
{

}

void UdpClient::createConnect(int port,std::string& ip)
{
    
}

void UdpClient::connect()
{

}