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
CMAKE_COMMAND = C:\Users\Merij\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\233.14015.92\bin\cmake\win\x64\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Merij\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\233.14015.92\bin\cmake\win\x64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/reopen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glfw/tests/CMakeFiles/reopen.dir/compiler_depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/reopen.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/reopen.dir/flags.make

glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: glfw/tests/CMakeFiles/reopen.dir/flags.make
glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: glfw/tests/CMakeFiles/reopen.dir/includes_C.rsp
glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: C:/Users/Merij/Downloads/ClionOpenGLSetUp-Windows-master/OpenGlSetUpFromGLFW/glfw/tests/reopen.c
glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj: glfw/tests/CMakeFiles/reopen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj"
	cd /d C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && C:\Users\Merij\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\233.14015.92\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj -MF CMakeFiles\reopen.dir\reopen.c.obj.d -o CMakeFiles\reopen.dir\reopen.c.obj -c C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\glfw\tests\reopen.c

glfw/tests/CMakeFiles/reopen.dir/reopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/reopen.dir/reopen.c.i"
	cd /d C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && C:\Users\Merij\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\233.14015.92\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\glfw\tests\reopen.c > CMakeFiles\reopen.dir\reopen.c.i

glfw/tests/CMakeFiles/reopen.dir/reopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/reopen.dir/reopen.c.s"
	cd /d C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && C:\Users\Merij\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\233.14015.92\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\glfw\tests\reopen.c -o CMakeFiles\reopen.dir\reopen.c.s

# Object files for target reopen
reopen_OBJECTS = \
"CMakeFiles/reopen.dir/reopen.c.obj"

# External object files for target reopen
reopen_EXTERNAL_OBJECTS =

glfw/tests/reopen.exe: glfw/tests/CMakeFiles/reopen.dir/reopen.c.obj
glfw/tests/reopen.exe: glfw/tests/CMakeFiles/reopen.dir/build.make
glfw/tests/reopen.exe: glfw/src/libglfw3.a
glfw/tests/reopen.exe: glfw/tests/CMakeFiles/reopen.dir/linkLibs.rsp
glfw/tests/reopen.exe: glfw/tests/CMakeFiles/reopen.dir/objects1.rsp
glfw/tests/reopen.exe: glfw/tests/CMakeFiles/reopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable reopen.exe"
	cd /d C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\reopen.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/reopen.dir/build: glfw/tests/reopen.exe
.PHONY : glfw/tests/CMakeFiles/reopen.dir/build

glfw/tests/CMakeFiles/reopen.dir/clean:
	cd /d C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\reopen.dir\cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/reopen.dir/clean

glfw/tests/CMakeFiles/reopen.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\glfw\tests C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests C:\Users\Merij\Downloads\ClionOpenGLSetUp-Windows-master\OpenGlSetUpFromGLFW\cmake-build-debug\glfw\tests\CMakeFiles\reopen.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : glfw/tests/CMakeFiles/reopen.dir/depend

