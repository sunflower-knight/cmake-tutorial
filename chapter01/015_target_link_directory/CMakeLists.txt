# 指定cmake 的最低版本
cmake_minimum_required(VERSION 3.10)

# 构建项目的名称
project(cmake-tutorial)

# 构建执行程序
add_executable(exefile main.cpp)

# 头文件
target_include_directories(exefile PUBLIC include)

### link library method 1
#target_link_libraries(exefile PUBLIC /home/***/cmake-tutorial/component/build/log/liblog.so) # 使用绝对目录

### link library method 2
# 目标链接库时的检索目录
target_link_directories(exefile PUBLIC ../../component/build/log)
# 在检索目录中找到log库
target_link_libraries(exefile PUBLIC log) # 1.
#target_link_libraries(exefile PUBLIC log.so) # 2.显示指定动态库
#target_link_libraries(exefile PUBLIC log.a)  # 3.显示指定静态库
######################################