# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build

# Include any dependencies generated for this target.
include CMakeFiles/integracao.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/integracao.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/integracao.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/integracao.dir/flags.make

lex.yy.cc: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/lexer.l
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[FLEX][Lexer] Building scanner with flex 2.6.4"
	cd /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5 && /usr/sbin/flex -+ -o/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/lex.yy.cc lexer.l

CMakeFiles/integracao.dir/ast.cpp.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/ast.cpp.o: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/ast.cpp
CMakeFiles/integracao.dir/ast.cpp.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/integracao.dir/ast.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/ast.cpp.o -MF CMakeFiles/integracao.dir/ast.cpp.o.d -o CMakeFiles/integracao.dir/ast.cpp.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/ast.cpp

CMakeFiles/integracao.dir/ast.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/ast.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/ast.cpp > CMakeFiles/integracao.dir/ast.cpp.i

CMakeFiles/integracao.dir/ast.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/ast.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/ast.cpp -o CMakeFiles/integracao.dir/ast.cpp.s

CMakeFiles/integracao.dir/gen.cpp.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/gen.cpp.o: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/gen.cpp
CMakeFiles/integracao.dir/gen.cpp.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/integracao.dir/gen.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/gen.cpp.o -MF CMakeFiles/integracao.dir/gen.cpp.o.d -o CMakeFiles/integracao.dir/gen.cpp.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/gen.cpp

CMakeFiles/integracao.dir/gen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/gen.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/gen.cpp > CMakeFiles/integracao.dir/gen.cpp.i

CMakeFiles/integracao.dir/gen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/gen.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/gen.cpp -o CMakeFiles/integracao.dir/gen.cpp.s

CMakeFiles/integracao.dir/checker.cpp.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/checker.cpp.o: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/checker.cpp
CMakeFiles/integracao.dir/checker.cpp.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/integracao.dir/checker.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/checker.cpp.o -MF CMakeFiles/integracao.dir/checker.cpp.o.d -o CMakeFiles/integracao.dir/checker.cpp.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/checker.cpp

CMakeFiles/integracao.dir/checker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/checker.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/checker.cpp > CMakeFiles/integracao.dir/checker.cpp.i

CMakeFiles/integracao.dir/checker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/checker.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/checker.cpp -o CMakeFiles/integracao.dir/checker.cpp.s

CMakeFiles/integracao.dir/parser.cpp.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/parser.cpp.o: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/parser.cpp
CMakeFiles/integracao.dir/parser.cpp.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/integracao.dir/parser.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/parser.cpp.o -MF CMakeFiles/integracao.dir/parser.cpp.o.d -o CMakeFiles/integracao.dir/parser.cpp.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/parser.cpp

CMakeFiles/integracao.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/parser.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/parser.cpp > CMakeFiles/integracao.dir/parser.cpp.i

CMakeFiles/integracao.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/parser.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/parser.cpp -o CMakeFiles/integracao.dir/parser.cpp.s

CMakeFiles/integracao.dir/symtable.cpp.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/symtable.cpp.o: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/symtable.cpp
CMakeFiles/integracao.dir/symtable.cpp.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/integracao.dir/symtable.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/symtable.cpp.o -MF CMakeFiles/integracao.dir/symtable.cpp.o.d -o CMakeFiles/integracao.dir/symtable.cpp.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/symtable.cpp

CMakeFiles/integracao.dir/symtable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/symtable.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/symtable.cpp > CMakeFiles/integracao.dir/symtable.cpp.i

CMakeFiles/integracao.dir/symtable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/symtable.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/symtable.cpp -o CMakeFiles/integracao.dir/symtable.cpp.s

CMakeFiles/integracao.dir/error.cpp.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/error.cpp.o: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/error.cpp
CMakeFiles/integracao.dir/error.cpp.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/integracao.dir/error.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/error.cpp.o -MF CMakeFiles/integracao.dir/error.cpp.o.d -o CMakeFiles/integracao.dir/error.cpp.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/error.cpp

CMakeFiles/integracao.dir/error.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/error.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/error.cpp > CMakeFiles/integracao.dir/error.cpp.i

CMakeFiles/integracao.dir/error.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/error.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/error.cpp -o CMakeFiles/integracao.dir/error.cpp.s

CMakeFiles/integracao.dir/tradutor.cpp.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/tradutor.cpp.o: /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/tradutor.cpp
CMakeFiles/integracao.dir/tradutor.cpp.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/integracao.dir/tradutor.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/tradutor.cpp.o -MF CMakeFiles/integracao.dir/tradutor.cpp.o.d -o CMakeFiles/integracao.dir/tradutor.cpp.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/tradutor.cpp

CMakeFiles/integracao.dir/tradutor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/tradutor.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/tradutor.cpp > CMakeFiles/integracao.dir/tradutor.cpp.i

CMakeFiles/integracao.dir/tradutor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/tradutor.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/tradutor.cpp -o CMakeFiles/integracao.dir/tradutor.cpp.s

CMakeFiles/integracao.dir/lex.yy.cc.o: CMakeFiles/integracao.dir/flags.make
CMakeFiles/integracao.dir/lex.yy.cc.o: lex.yy.cc
CMakeFiles/integracao.dir/lex.yy.cc.o: CMakeFiles/integracao.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/integracao.dir/lex.yy.cc.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/integracao.dir/lex.yy.cc.o -MF CMakeFiles/integracao.dir/lex.yy.cc.o.d -o CMakeFiles/integracao.dir/lex.yy.cc.o -c /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/lex.yy.cc

CMakeFiles/integracao.dir/lex.yy.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/integracao.dir/lex.yy.cc.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/lex.yy.cc > CMakeFiles/integracao.dir/lex.yy.cc.i

CMakeFiles/integracao.dir/lex.yy.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/integracao.dir/lex.yy.cc.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/lex.yy.cc -o CMakeFiles/integracao.dir/lex.yy.cc.s

# Object files for target integracao
integracao_OBJECTS = \
"CMakeFiles/integracao.dir/ast.cpp.o" \
"CMakeFiles/integracao.dir/gen.cpp.o" \
"CMakeFiles/integracao.dir/checker.cpp.o" \
"CMakeFiles/integracao.dir/parser.cpp.o" \
"CMakeFiles/integracao.dir/symtable.cpp.o" \
"CMakeFiles/integracao.dir/error.cpp.o" \
"CMakeFiles/integracao.dir/tradutor.cpp.o" \
"CMakeFiles/integracao.dir/lex.yy.cc.o"

# External object files for target integracao
integracao_EXTERNAL_OBJECTS =

integracao: CMakeFiles/integracao.dir/ast.cpp.o
integracao: CMakeFiles/integracao.dir/gen.cpp.o
integracao: CMakeFiles/integracao.dir/checker.cpp.o
integracao: CMakeFiles/integracao.dir/parser.cpp.o
integracao: CMakeFiles/integracao.dir/symtable.cpp.o
integracao: CMakeFiles/integracao.dir/error.cpp.o
integracao: CMakeFiles/integracao.dir/tradutor.cpp.o
integracao: CMakeFiles/integracao.dir/lex.yy.cc.o
integracao: CMakeFiles/integracao.dir/build.make
integracao: CMakeFiles/integracao.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable integracao"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/integracao.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/integracao.dir/build: integracao
.PHONY : CMakeFiles/integracao.dir/build

CMakeFiles/integracao.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/integracao.dir/cmake_clean.cmake
.PHONY : CMakeFiles/integracao.dir/clean

CMakeFiles/integracao.dir/depend: lex.yy.cc
	cd /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5 /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5 /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build /home/eduardo09/gabriel/ufrn/semestres/2024.2/compiladores/comp_dca0211/uni2/lab5/build/CMakeFiles/integracao.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/integracao.dir/depend
