# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd

# Include any dependencies generated for this target.
include src/protobuf/CMakeFiles/raceintospace_protobuf.dir/depend.make

# Include the progress variables for this target.
include src/protobuf/CMakeFiles/raceintospace_protobuf.dir/progress.make

# Include the compile flags for this target's objects.
include src/protobuf/CMakeFiles/raceintospace_protobuf.dir/flags.make

src/protobuf/raceintospace.pb.cc: src/protobuf/raceintospace.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running protocol buffer compiler on raceintospace.proto"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf && protoc --cpp_out /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf --proto_path /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf/raceintospace.proto

src/protobuf/raceintospace.pb.h: src/protobuf/raceintospace.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate src/protobuf/raceintospace.pb.h

src/protobuf/CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.o: src/protobuf/CMakeFiles/raceintospace_protobuf.dir/flags.make
src/protobuf/CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.o: src/protobuf/raceintospace.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/protobuf/CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.o"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf && /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/mipsel-linux-uclibc/usr/bin/mipsel-buildroot-linux-uclibc-g++ --sysroot=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/mipsel-linux-uclibc/usr/mipsel-buildroot-linux-uclibc/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.o -c /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf/raceintospace.pb.cc

src/protobuf/CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.i"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf && /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/mipsel-linux-uclibc/usr/bin/mipsel-buildroot-linux-uclibc-g++ --sysroot=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/mipsel-linux-uclibc/usr/mipsel-buildroot-linux-uclibc/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf/raceintospace.pb.cc > CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.i

src/protobuf/CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.s"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf && /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/mipsel-linux-uclibc/usr/bin/mipsel-buildroot-linux-uclibc-g++ --sysroot=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/mipsel-linux-uclibc/usr/mipsel-buildroot-linux-uclibc/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf/raceintospace.pb.cc -o CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.s

# Object files for target raceintospace_protobuf
raceintospace_protobuf_OBJECTS = \
"CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.o"

# External object files for target raceintospace_protobuf
raceintospace_protobuf_EXTERNAL_OBJECTS =

src/protobuf/libraceintospace_protobuf.a: src/protobuf/CMakeFiles/raceintospace_protobuf.dir/raceintospace.pb.cc.o
src/protobuf/libraceintospace_protobuf.a: src/protobuf/CMakeFiles/raceintospace_protobuf.dir/build.make
src/protobuf/libraceintospace_protobuf.a: src/protobuf/CMakeFiles/raceintospace_protobuf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libraceintospace_protobuf.a"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf && $(CMAKE_COMMAND) -P CMakeFiles/raceintospace_protobuf.dir/cmake_clean_target.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raceintospace_protobuf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/protobuf/CMakeFiles/raceintospace_protobuf.dir/build: src/protobuf/libraceintospace_protobuf.a

.PHONY : src/protobuf/CMakeFiles/raceintospace_protobuf.dir/build

src/protobuf/CMakeFiles/raceintospace_protobuf.dir/clean:
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf && $(CMAKE_COMMAND) -P CMakeFiles/raceintospace_protobuf.dir/cmake_clean.cmake
.PHONY : src/protobuf/CMakeFiles/raceintospace_protobuf.dir/clean

src/protobuf/CMakeFiles/raceintospace_protobuf.dir/depend: src/protobuf/raceintospace.pb.cc
src/protobuf/CMakeFiles/raceintospace_protobuf.dir/depend: src/protobuf/raceintospace.pb.h
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd/src/protobuf/CMakeFiles/raceintospace_protobuf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/protobuf/CMakeFiles/raceintospace_protobuf.dir/depend
