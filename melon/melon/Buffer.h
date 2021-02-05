#pragma once
#include <vector>
#include <algorithm>

class Buffer{
	public:
		static const size_t kPrepend = 8;
		static const size_t kInitialSize = 1024;
		Buffer(size_t initialSize = kInitialSize):
			buffer_(kPrepend + initialSize),
			readIndex_(kPrepend),
			writeIndex_(kPrepend),
		{
			
		}
		
		char* begin(){
			return &*buffer_.begin();
		}
		
		const char* begin(){
			return &*buffer_.begin();
		}
		
		size_t readableSize() const{
			return writeIndex_ - readIndex_;
		}
		
		size_t writableSize() const{
			return buffer_.size() - writeIndex_;
		}
		
		size_t prependableSize() const{
			return readIndex_;
		}
		
		const char* peek() const{
			return begin() + readIndex_;
		}
		
		void retrieve(size_t len){
			assert(len < readableSize());
			if(len < readableSize()){
				readIndex_ += len;
			}
			else{
				retrieveAll();
			}
		}
		
		void retrieveAll(){
			readIndex_ = kPrepend;
			writeIndex_ = kPrepend;
		}
		
		void append(const string& str){
			append(str.c_str(), str.size());
		}
		
		void append(const cahr* data, size_t len){
			if(writableSize() < len){
				resize();
			}
			std::copy(data, data + len, &*(buffer_.begin()) + writeIndex_);
		}
		
		void resize(size_t len){
			if(writableSize() + prependableSize() < len + kPrepend){
				buffer_.resize(writeIndex_ + len);
			}
			else{
				size_t readable = readableSize();
				std::copy(&*(buffer_.begin()) + readIndex_,
						  &*(buffer_.begin()) + writeIndex_,
						  &*(buffer_.begin()) + kPrepend);
				readIndex_ = kPrepend;
				writeIndex_ = readIndex_ + readable;
			}
		}
		
		ssize_t readFd(int fd, int* savedErrno){
			char extrabuf[65536];
			struct iovec vec[2];
			const size_t writable = writableSize();
			vec[0].iov_base = begin() + writeIndex_;
			vec[0].iov_len = writable;
			vec[1].iov_base = extrabuf;
			vec[1].iov_len = sizeof extrabuf;
			const int iovcnt = (writable < sizeof extrabuf) ? 2: 1;
			const ssize_t n = readv(fd, vec, iovcnt);
			if(n < 0){
				*savedErrno = errno;
			}
			else if(implicit_cast<size_t>(n) <= writable){
				writeIndex_ += n;
			}
			else{
				writeIndex_ = buffer_.size();
				append(extrabuf, n - writable);
			}
			return n;
		}
	private:
		std::vector<char> buffer_;
		size_t readIndex_;
		size_t writeIndex_;
}






