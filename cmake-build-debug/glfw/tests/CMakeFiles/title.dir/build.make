# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = C:\Users\Merij\AppData\Local\Programs\CLion\bin\cmake\win\x64\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Merij\AppData\Local\Programs\CLion\bin\cmake\win\x64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\OpenGlSetUpFromGLFW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\OpenGlSetUpFromGLFW\cmake-build-debug

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/title.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glfw/tests/CMakeFiles/title.dir/compiler_depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/title.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/title.dir/flags.make

glfw/tests/CMakeFiles/title.dir/title.c.obj: glfw/tests/CMakeFiles/title.dir/flags.make
glfw/tests/CMakeFiles/title.dir/title.c.obj: glfw/tests/CMakeFiles/title.dir/includes_C.rsp
glfw/tests/CMakeFiles/title.dir/title.c.obj: D:/OpenGlSetUpFromGLFW/glfw/tests/title.c
glfw/tests/CMakeFiles/title.dir/title.c.obj: glfw/tests/CMakeFiles/title.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\OpenGlSetUpFromGLFW\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/title.dir/title.c.obj"
	cd /d D:\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && C:\Users\Merij\AppData\Local\Programs\CLion\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/title.dir/title.c.obj -MF CMakeFiles\title.dir\title.c.obj.d -o CMakeFiles\title.dir\title.c.obj -c D:\OpenGlSetUpFromGLFW\glfw\tests\title.c

glfw/tests/CMakeFiles/title.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/title.dir/title.c.i"
	cd /d D:\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && C:\Users\Merij\AppData\Local\Programs\CLion\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\OpenGlSetUpFromGLFW\glfw\tests\title.c > CMakeFiles\title.dir\title.c.i

glfw/tests/CMakeFiles/title.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/title.dir/title.c.s"
	cd /d D:\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && C:\Users\Merij\AppData\Local\Programs\CLion\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\OpenGlSetUpFromGLFW\glfw\tests\title.c -o CMakeFiles\title.dir\title.c.s

# Object files for target title
title_OBJECTS = \
"CMakeFiles/title.dir/title.c.obj"

# External object files for target title
title_EXTERNAL_OBJECTS =

glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/title.c.obj
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/build.make
glfw/tests/title.exe: glfw/src/libglfw3.a
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/linkLibs.rsp
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/objects1.rsp
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\OpenGlSetUpFromGLFW\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable title.exe"
	cd /d D:\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\title.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/title.dir/build: glfw/tests/title.exe
.PHONY : glfw/tests/CMakeFiles/title.dir/build

glfw/tests/CMakeFiles/title.dir/clean:
	cd /d D:\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\title.dir\cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/title.dir/clean

glfw/tests/CMakeFiles/title.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\OpenGlSetUpFromGLFW D:\OpenGlSetUpFromGLFW\glfw\tests D:\OpenGlSetUpFromGLFW\cmake-build-debug D:\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests D:\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests\CMakeFiles\title.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : glfw/tests/CMakeFiles/title.dir/depend

