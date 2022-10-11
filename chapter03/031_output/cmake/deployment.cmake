message(STATUS "------------------------------引入天堂有限公司工程工程输出标准")

#build file


# linux中动态库的输出目录
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY  ${CMAKE_CURRENT_LIST_DIR}/../build/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG  ${CMAKE_CURRENT_LIST_DIR}/../build/lib)

# TODO 不同配置版本的输出路径
# 执行文件和动态库输出路径
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY   ${CMAKE_CURRENT_LIST_DIR}/../build/lib)

# 静态库 window.lib文件  lib.地址文件
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY    ${CMAKE_CURRENT_LIST_DIR}/../build/lib)
# WINDOW-MS pdb调试信息文件
set(CMAKE_COMPILE_PDB_OUTPUT_DIRECTORY) #这个东西是啥?
set(CMAKE_PDB_OUTPUT_DIRECTORY)
#  debug 和 release 版本要放在两个目录中 不能 保证正常进行。

# TODO 如果在WINDOW系统中所有DEBUG包增加后缀 一般加上后缀则debug和release放在同一路径中
# 若不加上则放在不同的路径中
set(CMAKE_DEBUG_POSTFIX)

# VS 的项目路径
set(CMAKE_VS_DEVENV_COMMAND)