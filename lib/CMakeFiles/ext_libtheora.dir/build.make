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
CMAKE_SOURCE_DIR = /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2

# Utility rule file for ext_libtheora.

# Include the progress variables for this target.
include lib/CMakeFiles/ext_libtheora.dir/progress.make

lib/CMakeFiles/ext_libtheora: lib/CMakeFiles/ext_libtheora-complete


lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-install
lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-mkdir
lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-download
lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-update
lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-patch
lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-configure
lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-build
lib/CMakeFiles/ext_libtheora-complete: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles/ext_libtheora-complete
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-done

lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-install: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-build && $(MAKE) install
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-install

lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-build
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/tmp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/downloads
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-mkdir

lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-download: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-urlinfo.txt
lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-download: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/download-ext_libtheora.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/verify-ext_libtheora.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/extract-ext_libtheora.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-download

lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-update: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E echo_append
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-update

lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-patch: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-download
lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-patch: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Performing patch step for 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora && /usr/bin/cmake -E copy /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora/CMakeLists.txt /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora/CMakeLists.txt
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-patch

lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-configure: lib/libtheora-1.1.1/tmp/ext_libtheora-cfgcmd.txt
lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-configure: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-update
lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-configure: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/local -DLocalPrefix=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/local "-GUnix Makefiles" /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-configure

lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-build: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ext_libtheora'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-build && $(MAKE)
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-build

ext_libtheora: lib/CMakeFiles/ext_libtheora
ext_libtheora: lib/CMakeFiles/ext_libtheora-complete
ext_libtheora: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-install
ext_libtheora: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-mkdir
ext_libtheora: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-download
ext_libtheora: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-update
ext_libtheora: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-patch
ext_libtheora: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-configure
ext_libtheora: lib/libtheora-1.1.1/src/ext_libtheora-stamp/ext_libtheora-build
ext_libtheora: lib/CMakeFiles/ext_libtheora.dir/build.make

.PHONY : ext_libtheora

# Rule to build all files generated by this target.
lib/CMakeFiles/ext_libtheora.dir/build: ext_libtheora

.PHONY : lib/CMakeFiles/ext_libtheora.dir/build

lib/CMakeFiles/ext_libtheora.dir/clean:
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && $(CMAKE_COMMAND) -P CMakeFiles/ext_libtheora.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/ext_libtheora.dir/clean

lib/CMakeFiles/ext_libtheora.dir/depend:
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles/ext_libtheora.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/ext_libtheora.dir/depend
