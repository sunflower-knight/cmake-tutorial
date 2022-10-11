cmake_minimum_required(VERSION 3.10)

project(cmake-tutorial)


# 1. practice if-else first
include(practice/if-else.cmake)

# 2. list
include(practice/list.cmake)

# 3.foreach-while
include(practice/foreach&while.cmake)

add_subdirectory(timer)
add_executable(exefile main.cpp)
target_link_libraries(exefile PUBLIC timer)