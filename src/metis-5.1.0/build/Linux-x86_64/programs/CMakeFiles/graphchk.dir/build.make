# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64

# Include any dependencies generated for this target.
include programs/CMakeFiles/graphchk.dir/depend.make

# Include the progress variables for this target.
include programs/CMakeFiles/graphchk.dir/progress.make

# Include the compile flags for this target's objects.
include programs/CMakeFiles/graphchk.dir/flags.make

programs/CMakeFiles/graphchk.dir/graphchk.c.o: programs/CMakeFiles/graphchk.dir/flags.make
programs/CMakeFiles/graphchk.dir/graphchk.c.o: ../../programs/graphchk.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object programs/CMakeFiles/graphchk.dir/graphchk.c.o"
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/graphchk.dir/graphchk.c.o   -c /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/programs/graphchk.c

programs/CMakeFiles/graphchk.dir/graphchk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/graphchk.dir/graphchk.c.i"
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/programs/graphchk.c > CMakeFiles/graphchk.dir/graphchk.c.i

programs/CMakeFiles/graphchk.dir/graphchk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/graphchk.dir/graphchk.c.s"
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/programs/graphchk.c -o CMakeFiles/graphchk.dir/graphchk.c.s

programs/CMakeFiles/graphchk.dir/graphchk.c.o.requires:
.PHONY : programs/CMakeFiles/graphchk.dir/graphchk.c.o.requires

programs/CMakeFiles/graphchk.dir/graphchk.c.o.provides: programs/CMakeFiles/graphchk.dir/graphchk.c.o.requires
	$(MAKE) -f programs/CMakeFiles/graphchk.dir/build.make programs/CMakeFiles/graphchk.dir/graphchk.c.o.provides.build
.PHONY : programs/CMakeFiles/graphchk.dir/graphchk.c.o.provides

programs/CMakeFiles/graphchk.dir/graphchk.c.o.provides.build: programs/CMakeFiles/graphchk.dir/graphchk.c.o

programs/CMakeFiles/graphchk.dir/io.c.o: programs/CMakeFiles/graphchk.dir/flags.make
programs/CMakeFiles/graphchk.dir/io.c.o: ../../programs/io.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object programs/CMakeFiles/graphchk.dir/io.c.o"
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/graphchk.dir/io.c.o   -c /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/programs/io.c

programs/CMakeFiles/graphchk.dir/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/graphchk.dir/io.c.i"
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/programs/io.c > CMakeFiles/graphchk.dir/io.c.i

programs/CMakeFiles/graphchk.dir/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/graphchk.dir/io.c.s"
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/programs/io.c -o CMakeFiles/graphchk.dir/io.c.s

programs/CMakeFiles/graphchk.dir/io.c.o.requires:
.PHONY : programs/CMakeFiles/graphchk.dir/io.c.o.requires

programs/CMakeFiles/graphchk.dir/io.c.o.provides: programs/CMakeFiles/graphchk.dir/io.c.o.requires
	$(MAKE) -f programs/CMakeFiles/graphchk.dir/build.make programs/CMakeFiles/graphchk.dir/io.c.o.provides.build
.PHONY : programs/CMakeFiles/graphchk.dir/io.c.o.provides

programs/CMakeFiles/graphchk.dir/io.c.o.provides.build: programs/CMakeFiles/graphchk.dir/io.c.o

# Object files for target graphchk
graphchk_OBJECTS = \
"CMakeFiles/graphchk.dir/graphchk.c.o" \
"CMakeFiles/graphchk.dir/io.c.o"

# External object files for target graphchk
graphchk_EXTERNAL_OBJECTS =

programs/graphchk: programs/CMakeFiles/graphchk.dir/graphchk.c.o
programs/graphchk: programs/CMakeFiles/graphchk.dir/io.c.o
programs/graphchk: programs/CMakeFiles/graphchk.dir/build.make
programs/graphchk: libmetis/libmetis.a
programs/graphchk: programs/CMakeFiles/graphchk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable graphchk"
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graphchk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/CMakeFiles/graphchk.dir/build: programs/graphchk
.PHONY : programs/CMakeFiles/graphchk.dir/build

programs/CMakeFiles/graphchk.dir/requires: programs/CMakeFiles/graphchk.dir/graphchk.c.o.requires
programs/CMakeFiles/graphchk.dir/requires: programs/CMakeFiles/graphchk.dir/io.c.o.requires
.PHONY : programs/CMakeFiles/graphchk.dir/requires

programs/CMakeFiles/graphchk.dir/clean:
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs && $(CMAKE_COMMAND) -P CMakeFiles/graphchk.dir/cmake_clean.cmake
.PHONY : programs/CMakeFiles/graphchk.dir/clean

programs/CMakeFiles/graphchk.dir/depend:
	cd /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0 /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/programs /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64 /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs /home/patrick/Julia/v0.4/MUMPS.jl/src/metis-5.1.0/build/Linux-x86_64/programs/CMakeFiles/graphchk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/CMakeFiles/graphchk.dir/depend

