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
include melon/CMakeFiles/TimerTest.dir/depend.make

# Include the progress variables for this target.
include melon/CMakeFiles/TimerTest.dir/progress.make

# Include the compile flags for this target's objects.
include melon/CMakeFiles/TimerTest.dir/flags.make

melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o: /home/zl/learning/melon/melon/melon/Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/Buffer.cpp.o -c /home/zl/learning/melon/melon/melon/Buffer.cpp

melon/CMakeFiles/TimerTest.dir/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/Buffer.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Buffer.cpp > CMakeFiles/TimerTest.dir/Buffer.cpp.i

melon/CMakeFiles/TimerTest.dir/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/Buffer.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Buffer.cpp -o CMakeFiles/TimerTest.dir/Buffer.cpp.s

melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o


melon/CMakeFiles/TimerTest.dir/Channel.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/Channel.cpp.o: /home/zl/learning/melon/melon/melon/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object melon/CMakeFiles/TimerTest.dir/Channel.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/Channel.cpp.o -c /home/zl/learning/melon/melon/melon/Channel.cpp

melon/CMakeFiles/TimerTest.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/Channel.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Channel.cpp > CMakeFiles/TimerTest.dir/Channel.cpp.i

melon/CMakeFiles/TimerTest.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/Channel.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Channel.cpp -o CMakeFiles/TimerTest.dir/Channel.cpp.s

melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/Channel.cpp.o


melon/CMakeFiles/TimerTest.dir/Connection.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/Connection.cpp.o: /home/zl/learning/melon/melon/melon/Connection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object melon/CMakeFiles/TimerTest.dir/Connection.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/Connection.cpp.o -c /home/zl/learning/melon/melon/melon/Connection.cpp

melon/CMakeFiles/TimerTest.dir/Connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/Connection.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Connection.cpp > CMakeFiles/TimerTest.dir/Connection.cpp.i

melon/CMakeFiles/TimerTest.dir/Connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/Connection.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Connection.cpp -o CMakeFiles/TimerTest.dir/Connection.cpp.s

melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/Connection.cpp.o


melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o: /home/zl/learning/melon/melon/melon/Epoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/Epoll.cpp.o -c /home/zl/learning/melon/melon/melon/Epoll.cpp

melon/CMakeFiles/TimerTest.dir/Epoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/Epoll.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Epoll.cpp > CMakeFiles/TimerTest.dir/Epoll.cpp.i

melon/CMakeFiles/TimerTest.dir/Epoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/Epoll.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Epoll.cpp -o CMakeFiles/TimerTest.dir/Epoll.cpp.s

melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o


melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o: /home/zl/learning/melon/melon/melon/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/EventLoop.cpp.o -c /home/zl/learning/melon/melon/melon/EventLoop.cpp

melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/EventLoop.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/EventLoop.cpp > CMakeFiles/TimerTest.dir/EventLoop.cpp.i

melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/EventLoop.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/EventLoop.cpp -o CMakeFiles/TimerTest.dir/EventLoop.cpp.s

melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o


melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o: /home/zl/learning/melon/melon/melon/EventLoopThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o -c /home/zl/learning/melon/melon/melon/EventLoopThread.cpp

melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/EventLoopThread.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/EventLoopThread.cpp > CMakeFiles/TimerTest.dir/EventLoopThread.cpp.i

melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/EventLoopThread.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/EventLoopThread.cpp -o CMakeFiles/TimerTest.dir/EventLoopThread.cpp.s

melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o


melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o: /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o -c /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp

melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp > CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.i

melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/EventLoopThreadPool.cpp -o CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.s

melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o


melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o: /home/zl/learning/melon/melon/melon/TestTimer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/TestTimer.cpp.o -c /home/zl/learning/melon/melon/melon/TestTimer.cpp

melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/TestTimer.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/TestTimer.cpp > CMakeFiles/TimerTest.dir/TestTimer.cpp.i

melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/TestTimer.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/TestTimer.cpp -o CMakeFiles/TimerTest.dir/TestTimer.cpp.s

melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o


melon/CMakeFiles/TimerTest.dir/Server.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/Server.cpp.o: /home/zl/learning/melon/melon/melon/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object melon/CMakeFiles/TimerTest.dir/Server.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/Server.cpp.o -c /home/zl/learning/melon/melon/melon/Server.cpp

melon/CMakeFiles/TimerTest.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/Server.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Server.cpp > CMakeFiles/TimerTest.dir/Server.cpp.i

melon/CMakeFiles/TimerTest.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/Server.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Server.cpp -o CMakeFiles/TimerTest.dir/Server.cpp.s

melon/CMakeFiles/TimerTest.dir/Server.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/Server.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/Server.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/Server.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/Server.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/Server.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/Server.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/Server.cpp.o


melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o: /home/zl/learning/melon/melon/melon/TcpClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/TcpClient.cpp.o -c /home/zl/learning/melon/melon/melon/TcpClient.cpp

melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/TcpClient.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/TcpClient.cpp > CMakeFiles/TimerTest.dir/TcpClient.cpp.i

melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/TcpClient.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/TcpClient.cpp -o CMakeFiles/TimerTest.dir/TcpClient.cpp.s

melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o


melon/CMakeFiles/TimerTest.dir/Timer.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/Timer.cpp.o: /home/zl/learning/melon/melon/melon/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object melon/CMakeFiles/TimerTest.dir/Timer.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/Timer.cpp.o -c /home/zl/learning/melon/melon/melon/Timer.cpp

melon/CMakeFiles/TimerTest.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/Timer.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Timer.cpp > CMakeFiles/TimerTest.dir/Timer.cpp.i

melon/CMakeFiles/TimerTest.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/Timer.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Timer.cpp -o CMakeFiles/TimerTest.dir/Timer.cpp.s

melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/Timer.cpp.o


melon/CMakeFiles/TimerTest.dir/Util.cpp.o: melon/CMakeFiles/TimerTest.dir/flags.make
melon/CMakeFiles/TimerTest.dir/Util.cpp.o: /home/zl/learning/melon/melon/melon/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object melon/CMakeFiles/TimerTest.dir/Util.cpp.o"
	cd /home/zl/learning/melon/build/release/melon && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimerTest.dir/Util.cpp.o -c /home/zl/learning/melon/melon/melon/Util.cpp

melon/CMakeFiles/TimerTest.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimerTest.dir/Util.cpp.i"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zl/learning/melon/melon/melon/Util.cpp > CMakeFiles/TimerTest.dir/Util.cpp.i

melon/CMakeFiles/TimerTest.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimerTest.dir/Util.cpp.s"
	cd /home/zl/learning/melon/build/release/melon && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zl/learning/melon/melon/melon/Util.cpp -o CMakeFiles/TimerTest.dir/Util.cpp.s

melon/CMakeFiles/TimerTest.dir/Util.cpp.o.requires:

.PHONY : melon/CMakeFiles/TimerTest.dir/Util.cpp.o.requires

melon/CMakeFiles/TimerTest.dir/Util.cpp.o.provides: melon/CMakeFiles/TimerTest.dir/Util.cpp.o.requires
	$(MAKE) -f melon/CMakeFiles/TimerTest.dir/build.make melon/CMakeFiles/TimerTest.dir/Util.cpp.o.provides.build
.PHONY : melon/CMakeFiles/TimerTest.dir/Util.cpp.o.provides

melon/CMakeFiles/TimerTest.dir/Util.cpp.o.provides.build: melon/CMakeFiles/TimerTest.dir/Util.cpp.o


# Object files for target TimerTest
TimerTest_OBJECTS = \
"CMakeFiles/TimerTest.dir/Buffer.cpp.o" \
"CMakeFiles/TimerTest.dir/Channel.cpp.o" \
"CMakeFiles/TimerTest.dir/Connection.cpp.o" \
"CMakeFiles/TimerTest.dir/Epoll.cpp.o" \
"CMakeFiles/TimerTest.dir/EventLoop.cpp.o" \
"CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o" \
"CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o" \
"CMakeFiles/TimerTest.dir/TestTimer.cpp.o" \
"CMakeFiles/TimerTest.dir/Server.cpp.o" \
"CMakeFiles/TimerTest.dir/TcpClient.cpp.o" \
"CMakeFiles/TimerTest.dir/Timer.cpp.o" \
"CMakeFiles/TimerTest.dir/Util.cpp.o"

# External object files for target TimerTest
TimerTest_EXTERNAL_OBJECTS =

melon/TimerTest: melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/Channel.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/Connection.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/Server.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/Timer.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/Util.cpp.o
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/build.make
melon/TimerTest: melon/base/libserver_base.a
melon/TimerTest: melon/CMakeFiles/TimerTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zl/learning/melon/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable TimerTest"
	cd /home/zl/learning/melon/build/release/melon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TimerTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
melon/CMakeFiles/TimerTest.dir/build: melon/TimerTest

.PHONY : melon/CMakeFiles/TimerTest.dir/build

melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/Buffer.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/Channel.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/Connection.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/Epoll.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/EventLoop.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/EventLoopThread.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/EventLoopThreadPool.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/TestTimer.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/Server.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/TcpClient.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/Timer.cpp.o.requires
melon/CMakeFiles/TimerTest.dir/requires: melon/CMakeFiles/TimerTest.dir/Util.cpp.o.requires

.PHONY : melon/CMakeFiles/TimerTest.dir/requires

melon/CMakeFiles/TimerTest.dir/clean:
	cd /home/zl/learning/melon/build/release/melon && $(CMAKE_COMMAND) -P CMakeFiles/TimerTest.dir/cmake_clean.cmake
.PHONY : melon/CMakeFiles/TimerTest.dir/clean

melon/CMakeFiles/TimerTest.dir/depend:
	cd /home/zl/learning/melon/build/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zl/learning/melon/melon /home/zl/learning/melon/melon/melon /home/zl/learning/melon/build/release /home/zl/learning/melon/build/release/melon /home/zl/learning/melon/build/release/melon/CMakeFiles/TimerTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : melon/CMakeFiles/TimerTest.dir/depend
