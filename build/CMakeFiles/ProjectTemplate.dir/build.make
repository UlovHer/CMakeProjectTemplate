# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\CMake\bin\cmake.exe

# The command to remove a file.
RM = D:\CMake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\VSCodeWorkSpace\CMakeProjectTemplate

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\VSCodeWorkSpace\CMakeProjectTemplate\build

# Include any dependencies generated for this target.
include CMakeFiles/ProjectTemplate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ProjectTemplate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ProjectTemplate.dir/flags.make

CMakeFiles/ProjectTemplate.dir/main.cpp.obj: CMakeFiles/ProjectTemplate.dir/flags.make
CMakeFiles/ProjectTemplate.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\VSCodeWorkSpace\CMakeProjectTemplate\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ProjectTemplate.dir/main.cpp.obj"
	D:\Mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ProjectTemplate.dir\main.cpp.obj -c E:\VSCodeWorkSpace\CMakeProjectTemplate\main.cpp

CMakeFiles/ProjectTemplate.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ProjectTemplate.dir/main.cpp.i"
	D:\Mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\VSCodeWorkSpace\CMakeProjectTemplate\main.cpp > CMakeFiles\ProjectTemplate.dir\main.cpp.i

CMakeFiles/ProjectTemplate.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ProjectTemplate.dir/main.cpp.s"
	D:\Mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\VSCodeWorkSpace\CMakeProjectTemplate\main.cpp -o CMakeFiles\ProjectTemplate.dir\main.cpp.s

# Object files for target ProjectTemplate
ProjectTemplate_OBJECTS = \
"CMakeFiles/ProjectTemplate.dir/main.cpp.obj"

# External object files for target ProjectTemplate
ProjectTemplate_EXTERNAL_OBJECTS =

ProjectTemplate.exe: CMakeFiles/ProjectTemplate.dir/main.cpp.obj
ProjectTemplate.exe: CMakeFiles/ProjectTemplate.dir/build.make
ProjectTemplate.exe: CMakeFiles/ProjectTemplate.dir/linklibs.rsp
ProjectTemplate.exe: CMakeFiles/ProjectTemplate.dir/objects1.rsp
ProjectTemplate.exe: CMakeFiles/ProjectTemplate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\VSCodeWorkSpace\CMakeProjectTemplate\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ProjectTemplate.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ProjectTemplate.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ProjectTemplate.dir/build: ProjectTemplate.exe

.PHONY : CMakeFiles/ProjectTemplate.dir/build

CMakeFiles/ProjectTemplate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ProjectTemplate.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ProjectTemplate.dir/clean

CMakeFiles/ProjectTemplate.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\VSCodeWorkSpace\CMakeProjectTemplate E:\VSCodeWorkSpace\CMakeProjectTemplate E:\VSCodeWorkSpace\CMakeProjectTemplate\build E:\VSCodeWorkSpace\CMakeProjectTemplate\build E:\VSCodeWorkSpace\CMakeProjectTemplate\build\CMakeFiles\ProjectTemplate.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ProjectTemplate.dir/depend

