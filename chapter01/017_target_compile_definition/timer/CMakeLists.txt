aux_source_directory(src TIMER_SRC)
add_library(timer SHARED ${TIMER_SRC})
target_include_directories(timer PUBLIC include)
target_link_libraries(timer PUBLIC clock)

# 设定timer的宏
#target_compile_definitions(<target>
#                           <INTERFACE|PUBLIC|PRIVATE> [items1...]
#                           [<INTERFACE|PUBLIC|PRIVATE> [items2...] ...])

# 练习宏定义的范围控制
target_compile_definitions(timer PRIVATE DEBUG=1)
#set_property(TARGET timer PROPERTY COMPILE_DEFINITIONS PARA)  # 只影响源文件不影响头文件

# 在源文件中设置修饰属性->仅仅给源文件增加编译选项 # 控制粒度更小
set_property(SOURCE src/hour.cpp PROPERTY COMPILE_DEFINITIONS DEBUG)