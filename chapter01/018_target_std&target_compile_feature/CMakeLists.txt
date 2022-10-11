# 版本限制
cmake_minimum_required(VERSION 3.10)
# 项目名
project(cmake-tutorial)
include(cmake/standard.cmake)

# TARGET 的 各项参数的使用 在这个章节会讲解的 后面要补充内容章节的才行

add_subdirectory(timer)
add_subdirectory(clock)
add_executable(exefile main.cpp)
target_link_libraries(exefile PUBLIC timer)

get_property(var TARGET main PROPERTY CXX_STANDARD)
message("target main std is ${var}")