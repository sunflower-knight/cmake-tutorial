aux_source_directory(src TIMER_SRC)
add_library(timer SHARED ${TIMER_SRC})
target_include_directories(timer PUBLIC include)

#查看标准的显示
#查看 timer 对外的头文件属性情况
include(CMakePrintHelpers) # TODO 打印两种头文件才行
cmake_print_properties(TARGETS timer PROPERTIES INCLUDE_DIRECTORIES)
cmake_print_properties(TARGETS timer PROPERTIES INTERFACE_INCLUDE_DIRECTORIES)