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
include CMakeFiles/GLAD.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GLAD.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GLAD.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GLAD.dir/flags.make

CMakeFiles/GLAD.dir/src/glad.c.obj: CMakeFiles/GLAD.dir/flags.make
CMakeFiles/GLAD.dir/src/glad.c.obj: CMakeFiles/GLAD.dir/includes_C.rsp
CMakeFiles/GLAD.dir/src/glad.c.obj: D:/OpenGlSetUpFromGLFW/src/glad.c
CMakeFiles/GLAD.dir/src/glad.c.obj: CMakeFiles/GLAD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\OpenGlSetUpFromGLFW\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/GLAD.dir/src/glad.c.obj"
	C:\Users\Merij\AppData\Local\Programs\CLion\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/GLAD.dir/src/glad.c.obj -MF CMakeFiles\GLAD.dir\src\glad.c.obj.d -o CMakeFiles\GLAD.dir\src\glad.c.obj -c D:\OpenGlSetUpFromGLFW\src\glad.c

CMakeFiles/GLAD.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/GLAD.dir/src/glad.c.i"
	C:\Users\Merij\AppData\Local\Programs\CLion\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\OpenGlSetUpFromGLFW\src\glad.c > CMakeFiles\GLAD.dir\src\glad.c.i

CMakeFiles/GLAD.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/GLAD.dir/src/glad.c.s"
	C:\Users\Merij\AppData\Local\Programs\CLion\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\OpenGlSetUpFromGLFW\src\glad.c -o CMakeFiles\GLAD.dir\src\glad.c.s

# Object files for target GLAD
GLAD_OBJECTS = \
"CMakeFiles/GLAD.dir/src/glad.c.obj"

# External object files for target GLAD
GLAD_EXTERNAL_OBJECTS =

libGLAD.a: CMakeFiles/GLAD.dir/src/glad.c.obj
libGLAD.a: CMakeFiles/GLAD.dir/build.make
libGLAD.a: CMakeFiles/GLAD.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\OpenGlSetUpFromGLFW\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libGLAD.a"
	$(CMAKE_COMMAND) -P CMakeFiles\GLAD.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\GLAD.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GLAD.dir/build: libGLAD.a
.PHONY : CMakeFiles/GLAD.dir/build

CMakeFiles/GLAD.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\GLAD.dir\cmake_clean.cmake
.PHONY : CMakeFiles/GLAD.dir/clean

CMakeFiles/GLAD.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\OpenGlSetUpFromGLFW D:\OpenGlSetUpFromGLFW D:\OpenGlSetUpFromGLFW\cmake-build-debug D:\OpenGlSetUpFromGLFW\cmake-build-debug D:\OpenGlSetUpFromGLFW\cmake-build-debug\CMakeFiles\GLAD.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/GLAD.dir/depend

