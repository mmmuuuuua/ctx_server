# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zl/learning/melon/melon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zl/learning/melon/build/release

# Include any dependencies generated for this target.
include melon/CMakeFiles/PingPongClient.dir/depend.make

# Include the progress variables for this target.
include melon/CMakeFiles/PingPongClient.dir/progress.make

# Include the compile flags for this target's objects.
include melon/CMakeFiles/PingPongClient.dir/flags.make

melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o: /home/zl/learning/melon/melon/melon/Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/Buffer.cpp.o -c /home/zl/learning/melon/melon/melon/Buffer.cpp

melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/Buffer.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Buffer.cpp > CMakeFiles/PingPongClient.dir/Buffer.cpp.i

melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/Buffer.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Buffer.cpp -o CMakeFiles/PingPongClient.dir/Buffer.cpp.s

melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o


melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o: /home/zl/learning/melon/melon/melon/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/Channel.cpp.o -c /home/zl/learning/melon/melon/melon/Channel.cpp

melon/CMakeFiles/PingPongClient.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/Channel.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Channel.cpp > CMakeFiles/PingPongClient.dir/Channel.cpp.i

melon/CMakeFiles/PingPongClient.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/Channel.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Channel.cpp -o CMakeFiles/PingPongClient.dir/Channel.cpp.s

melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o


melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o: /home/zl/learning/melon/melon/melon/Connection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/Connection.cpp.o -c /home/zl/learning/melon/melon/melon/Connection.cpp

melon/CMakeFiles/PingPongClient.dir/Connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/Connection.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Connection.cpp > CMakeFiles/PingPongClient.dir/Connection.cpp.i

melon/CMakeFiles/PingPongClient.dir/Connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/Connection.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Connection.cpp -o CMakeFiles/PingPongClient.dir/Connection.cpp.s

melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o


melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o: /home/zl/learning/melon/melon/melon/Epoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/Epoll.cpp.o -c /home/zl/learning/melon/melon/melon/Epoll.cpp

melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/Epoll.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Epoll.cpp > CMakeFiles/PingPongClient.dir/Epoll.cpp.i

melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/Epoll.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Epoll.cpp -o CMakeFiles/PingPongClient.dir/Epoll.cpp.s

melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o


melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o: /home/zl/learning/melon/melon/melon/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/EventLoop.cpp.o -c /home/zl/learning/melon/melon/melon/EventLoop.cpp

melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/EventLoop.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/EventLoop.cpp > CMakeFiles/PingPongClient.dir/EventLoop.cpp.i

melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/EventLoop.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/EventLoop.cpp -o CMakeFiles/PingPongClient.dir/EventLoop.cpp.s

melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o


melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o: /home/zl/learning/melon/melon/melon/EventLoopThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o -c /home/zl/learning/melon/melon/melon/EventLoopThread.cpp

melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/EventLoopThread.cpp > CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.i

melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/EventLoopThread.cpp -o CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.s

melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o


melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o: /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o -c /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp

melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp > CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.i

melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp -o CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.s

melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o


melon/CMakeFiles/PingPongClient.dir/Server.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/Server.cpp.o: /home/zl/learning/melon/melon/melon/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object melon/CMakeFiles/PingPongClient.dir/Server.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/Server.cpp.o -c /home/zl/learning/melon/melon/melon/Server.cpp

melon/CMakeFiles/PingPongClient.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/Server.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Server.cpp > CMakeFiles/PingPongClient.dir/Server.cpp.i

melon/CMakeFiles/PingPongClient.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/Server.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Server.cpp -o CMakeFiles/PingPongClient.dir/Server.cpp.s

melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/Server.cpp.o


melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o: /home/zl/learning/melon/melon/melon/TcpClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/TcpClient.cpp.o -c /home/zl/learning/melon/melon/melon/TcpClient.cpp

melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/TcpClient.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/TcpClient.cpp > CMakeFiles/PingPongClient.dir/TcpClient.cpp.i

melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/TcpClient.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/TcpClient.cpp -o CMakeFiles/PingPongClient.dir/TcpClient.cpp.s

melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o


melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o: /home/zl/learning/melon/melon/melon/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/Timer.cpp.o -c /home/zl/learning/melon/melon/melon/Timer.cpp

melon/CMakeFiles/PingPongClient.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/Timer.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Timer.cpp > CMakeFiles/PingPongClient.dir/Timer.cpp.i

melon/CMakeFiles/PingPongClient.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/Timer.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Timer.cpp -o CMakeFiles/PingPongClient.dir/Timer.cpp.s

melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o


melon/CMakeFiles/PingPongClient.dir/Util.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/Util.cpp.o: /home/zl/learning/melon/melon/melon/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object melon/CMakeFiles/PingPongClient.dir/Util.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/Util.cpp.o -c /home/zl/learning/melon/melon/melon/Util.cpp

melon/CMakeFiles/PingPongClient.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/Util.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Util.cpp > CMakeFiles/PingPongClient.dir/Util.cpp.i

melon/CMakeFiles/PingPongClient.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/Util.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Util.cpp -o CMakeFiles/PingPongClient.dir/Util.cpp.s

melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/Util.cpp.o


melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o: melon/CMakeFiles/PingPongClient.dir/flags.make
melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o: /home/zl/learning/melon/melon/melon/PingPongClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o -c /home/zl/learning/melon/melon/melon/PingPongClient.cpp

melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PingPongClient.dir/PingPongClient.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/PingPongClient.cpp > CMakeFiles/PingPongClient.dir/PingPongClient.cpp.i

melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PingPongClient.dir/PingPongClient.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/PingPongClient.cpp -o CMakeFiles/PingPongClient.dir/PingPongClient.cpp.s

melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.requires:

.PHONY : melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.requires

melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.provides: melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/PingPongClient.dir/build.make melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.provides.build
.PHONY : melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.provides

melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.provides.build: melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o


# Object files for target PingPongClient
PingPongClient_OBJECTS = \
"CMakeFiles/PingPongClient.dir/Buffer.cpp.o" \
"CMakeFiles/PingPongClient.dir/Channel.cpp.o" \
"CMakeFiles/PingPongClient.dir/Connection.cpp.o" \
"CMakeFiles/PingPongClient.dir/Epoll.cpp.o" \
"CMakeFiles/PingPongClient.dir/EventLoop.cpp.o" \
"CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o" \
"CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o" \
"CMakeFiles/PingPongClient.dir/Server.cpp.o" \
"CMakeFiles/PingPongClient.dir/TcpClient.cpp.o" \
"CMakeFiles/PingPongClient.dir/Timer.cpp.o" \
"CMakeFiles/PingPongClient.dir/Util.cpp.o" \
"CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o"

# External object files for target PingPongClient
PingPongClient_EXTERNAL_OBJECTS =

melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/Server.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/Util.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/build.make
melon/PingPongClient: melon/base/libserver_base.a
melon/PingPongClient: melon/CMakeFiles/PingPongClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable PingPongClient"
	cd /home/zl/learning/melon/build/release/melon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PingPongClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
melon/CMakeFiles/PingPongClient.dir/build: melon/PingPongClient

.PHONY : melon/CMakeFiles/PingPongClient.dir/build

melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/Buffer.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/Channel.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/Connection.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/Epoll.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/EventLoop.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/EventLoopThread.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/EventLoopThreadPool.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/Server.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/TcpClient.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/Timer.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/Util.cpp.o.requires
melon/CMakeFiles/PingPongClient.dir/requires: melon/CMakeFiles/PingPongClient.dir/PingPongClient.cpp.o.requires

.PHONY : melon/CMakeFiles/PingPongClient.dir/requires

melon/CMakeFiles/PingPongClient.dir/clean:
	cd /home/zl/learning/melon/build/release/melon && $(CMAKE_COMMAND) -P CMakeFiles/PingPongClient.dir/cmake_clean.cmake
.PHONY : melon/CMakeFiles/PingPongClient.dir/clean

melon/CMakeFiles/PingPongClient.dir/depend:
	cd /home/zl/learning/melon/build/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zl/learning/melon/melon /home/zl/learning/melon/melon/melon /home/zl/learning/melon/build/release /home/zl/learning/melon/build/release/melon /home/zl/learning/melon/build/release/melon/CMakeFiles/PingPongClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : melon/CMakeFiles/PingPongClient.dir/depend

