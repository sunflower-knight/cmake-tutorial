######### method 1 ：指定文件下所有源文件
aux_source_directory(src LogSrc) # aux 将目录下src所有源文件的放置在变量LogSrc中
add_library(log SHARED ${LogSrc})
target_include_directories(log PUBLIC include)


######### method 2 : 单独指定
#add_library(log SHARED src/log.cpp src/print.cpp src/time.cpp ) # 单独指定源文件
#target_include_directories(log PUBLIC include) # 指定当前 target 头文件搜索目录