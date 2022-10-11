mkdir build
cd build

cmake   -S ..  -B .  && cmake  --build .
## method 1 -> cross platform                                         | 跨平台的编译方法
## cmake [options] -S <path-to-source> -B <path-to-build>             | API
## -S <path-to-source> = Explicitly specify a source directory.       | 源代码目录
## -B <path-to-build>  = Explicitly specify a build directory.        | 构建目录
## --build <dir>       = Build a CMake-generated project binary tree. |在目录中编译

#  cmake .. & make
## method 2 -> linux only
## cmake means run "cmake" in                                 |  cmake 表示 运行 cmake 命令
## .. means CmakeLists locate in parent directory             |  .. 表示 CmakeLists 在上层目录
## make means compile with config files in current directory  |   make 表示利用当前目录下的配置文件编译

# run exe
./exefile