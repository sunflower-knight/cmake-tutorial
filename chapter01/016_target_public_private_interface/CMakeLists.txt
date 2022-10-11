# 版本限制
cmake_minimum_required(VERSION 3.10)
# 项目名
project(cmake-tutorial)

# TARGET 的 各项参数的使用 在这个章节会讲解的 后面要补充内容章节的才行
add_subdirectory(timer)
add_subdirectory(clock)
add_executable(exefile main.cpp)
target_link_libraries(exefile PUBLIC timer)

#查看 timer 对外的头文件属性情况 #查看依赖关系的这个部分 就 调试不出来
include(CMakePrintHelpers) # TODO 打印两种头文件才行
cmake_print_properties(TARGETS main PROPERTIES INCLUDE_DIRECTORIES)
cmake_print_properties(TARGETS main PROPERTIES INTERFACE_INCLUDE_DIRECTORIES)
set(CMAKE_DEBUG_TARGET_PROPERTIES  INCLUDE_DIRECTORIES INTERFACE_INCLUDE_DIRECTORIES)