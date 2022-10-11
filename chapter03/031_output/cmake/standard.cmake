# 此文件为项目全局属性设置
message(STATUS "-------引入天堂有限公司工程编译标准------------")

# std
# 编译标准
set(CMAKE_CXX_STANDARD 98)

# build
# 编译的版本 - 开发阶段默认Debug
set(CMAKE_BUILD_TYPE Debug)
# 默认动态库
set(BUILD_SHARED_LIBS ON)
# 打开 fpic等命令 用于编译动态库 - 本公司开发默认使用动态库
set(CMAKE_POSITION_INDEPENDENT_CODE ON) # TODO 如果是clang则使用 -fpic 动态库属性

# message
# 错误预警 - 最高等级
set(CMAKE_CXX_FLAGS -W)
#编译时详细的生成目录
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_COLOR_MAKEFILE ON)

# feature
# 关闭编译器特有特性-保证程序的移植性
set(CMAKE_CXX_EXTENSIONS OFF) # 默认为开启