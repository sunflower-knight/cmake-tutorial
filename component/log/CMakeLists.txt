######### 指定文件下所有源文件
aux_source_directory(src LogSrc) # aux 将目录下src所有源文件的放置在变量LogSrc中
add_library(log SHARED ${LogSrc})
target_include_directories(log PRIVATE include)