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

# Utility rule file for ext_physfs.

# Include the progress variables for this target.
include lib/CMakeFiles/ext_physfs.dir/progress.make

lib/CMakeFiles/ext_physfs: lib/CMakeFiles/ext_physfs-complete


lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-install
lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-mkdir
lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-download
lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-update
lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-patch
lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-configure
lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-build
lib/CMakeFiles/ext_physfs-complete: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles/ext_physfs-complete
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-done

lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-install: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-build && $(MAKE) install
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-install

lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-build
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/tmp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/downloads
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E make_directory /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-mkdir

lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-download: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-urlinfo.txt
lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-download: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/download-ext_physfs.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/verify-ext_physfs.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src && /usr/bin/cmake -P /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/extract-ext_physfs.cmake
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-download

lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-update: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E echo_append
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-update

lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-patch: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-download
lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-patch: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E echo_append
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-patch

lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-configure: lib/physfs-3.0.1/tmp/ext_physfs-cfgcmd.txt
lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-configure: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-update
lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-configure: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/local -DPHYSFS_ARCHIVE_7Z=false -DPHYSFS_ARCHIVE_GRP=false -DPHYSFS_ARCHIVE_WAD=false -DPHYSFS_ARCHIVE_HOG=false -DPHYSFS_ARCHIVE_MVL=false -DPHYSFS_ARCHIVE_QPAK=false -DPHYSFS_ARCHIVE_ISO9660=false -DPHYSFS_HAVE_CDROM_SUPPORT=false -DPHYSFS_BUILD_SHARED=false -DPHYSFS_BUILD_TEST=false -DCMAKE_C_FLAGS= "-GUnix Makefiles" /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-configure

lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-build: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ext_physfs'"
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-build && $(MAKE)
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-build && /usr/bin/cmake -E touch /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-build

ext_physfs: lib/CMakeFiles/ext_physfs
ext_physfs: lib/CMakeFiles/ext_physfs-complete
ext_physfs: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-install
ext_physfs: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-mkdir
ext_physfs: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-download
ext_physfs: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-update
ext_physfs: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-patch
ext_physfs: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-configure
ext_physfs: lib/physfs-3.0.1/src/ext_physfs-stamp/ext_physfs-build
ext_physfs: lib/CMakeFiles/ext_physfs.dir/build.make

.PHONY : ext_physfs

# Rule to build all files generated by this target.
lib/CMakeFiles/ext_physfs.dir/build: ext_physfs

.PHONY : lib/CMakeFiles/ext_physfs.dir/build

lib/CMakeFiles/ext_physfs.dir/clean:
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib && $(CMAKE_COMMAND) -P CMakeFiles/ext_physfs.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/ext_physfs.dir/clean

lib/CMakeFiles/ext_physfs.dir/depend:
	cd /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2 /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib /run/media/raboten/c03df044-bb85-4f9c-a53f-e537b8a024a0/raceintospace-raceintospace-d9cd1cd2/lib/CMakeFiles/ext_physfs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/ext_physfs.dir/depend

