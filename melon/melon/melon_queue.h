
////考虑用ifndef保护避免重定义


#define melon_queue_init(q)\    ///初始化之后queue中只有一个dummy(sentinel)元素,也就是初始化一个空链表
    do{\
        (q)->prev=q;\
        (q)->next=q;\
    }while(0);

#define melon_queue_insert_after(q,x)\
    do{\
        (x)->next = (q)->next;\
        (x)->next->prev = x;\
        (q)->next = x;\
        (x)->prev = q;\
    }while(0);

#define melon_queue_insert_before(q,x)\
    do{\
        (x)->prev = (q)->prev;\
        (x)->prev->next = x;\
        (x)->next = q;\
        (q)->next = x;\
    }while(0);

#define melon_queue_remove(x)
    do{\
        (x)->next->prev = x;\
        (x)->prev->next = x;\
    }while

#define melon_queue_empty(q)
    (q == (q)->prev)

#define melon_queue_head(q)
    (q)->next

#define melon_queue_last(q)
    (q)->prev

#define melon_queue_sentinel(q)
    (q)

#define melon_queue_next(q)
    (q)->next

#define melon_queue_prev(q)
    (q)->prev

#define melon_queue_data(q,type,link)
    (type*) ((u_char*)q-offsetof(type,link))



/////melonQueue_放在eventLoop_中
////EventLoop.h EventLoop.cpp
Connection* getConnection();
void drainConnection();
void freeConnection();
void closeConnection();
void reusableConnection();

Connection* EventLoop::getConnection()
{
    Connection* c= freeConnection_;
    if(c==NULL)
    {
        drainConnection();
        c= freeConnection_;
    }
    if(c==NULL)
    {
        ////出现错误
        return NULL;
    }
    freeConnection_ = c->next_;
    freeConnectionNum--;

    return c;
}

Connection* EventLoop::drainConnection()
{

}