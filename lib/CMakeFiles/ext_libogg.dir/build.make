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

# Utility rule file for ext_libogg.

# Include the progress variables for this target.
include lib/CMakeFiles/ext_libogg.dir/progress.make

lib/CMakeFiles/ext_libogg: lib/CMakeFiles/ext_libogg-complete


lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-install
lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-mkdir
lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-download
lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-update
lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-patch
lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-configure
lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-build
lib/CMakeFiles/ext_libogg-complete: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles/ext_libogg-complete
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-done

lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-install: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-build && $(MAKE) install
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-install

lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-build
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/tmp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/downloads
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-mkdir

lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-download: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-urlinfo.txt
lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-download: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/download-ext_libogg.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/verify-ext_libogg.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/extract-ext_libogg.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-download

lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-update: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E echo_append
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-update

lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-patch: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-download
lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-patch: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Performing patch step for 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg && /usr/bin/cmake -E copy /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg/CMakeLists.txt /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg/CMakeLists.txt
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-patch

lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-configure: lib/libogg-1.3.0/tmp/ext_libogg-cfgcmd.txt
lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-configure: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-update
lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-configure: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/local -DCONFIG_TYPES_H_IN=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg/config_types.h.in "-GUnix Makefiles" /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-configure

lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-build: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ext_libogg'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-build && $(MAKE)
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-build

ext_libogg: lib/CMakeFiles/ext_libogg
ext_libogg: lib/CMakeFiles/ext_libogg-complete
ext_libogg: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-install
ext_libogg: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-mkdir
ext_libogg: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-download
ext_libogg: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-update
ext_libogg: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-patch
ext_libogg: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-configure
ext_libogg: lib/libogg-1.3.0/src/ext_libogg-stamp/ext_libogg-build
ext_libogg: lib/CMakeFiles/ext_libogg.dir/build.make

.PHONY : ext_libogg

# Rule to build all files generated by this target.
lib/CMakeFiles/ext_libogg.dir/build: ext_libogg

.PHONY : lib/CMakeFiles/ext_libogg.dir/build

lib/CMakeFiles/ext_libogg.dir/clean:
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && $(CMAKE_COMMAND) -P CMakeFiles/ext_libogg.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/ext_libogg.dir/clean

lib/CMakeFiles/ext_libogg.dir/depend:
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles/ext_libogg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/ext_libogg.dir/depend

