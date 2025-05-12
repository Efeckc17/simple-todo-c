cmake_minimum_required(VERSION 3.20)
project(simple-todo-c C)
set(CMAKE_C_STANDARD 11)

if(WIN32)
    message(STATUS "Detected Windows system. Continuing with the build.")
else()
    message(FATAL_ERROR "Unsupported operating system. Exiting CMake.")
endif()

include_directories(src)

add_executable(todo WIN32 src/todo.c src/gui.c src/main.c)