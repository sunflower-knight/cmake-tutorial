message("------------------------------------宏练习章节")

# 创建一个简单的宏并调用 -> 无参数
macro(print_author_info)
    message("Sunflower-knight from china")
endmacro()
print_author_info() #调用宏 将宏代码复制在此处
print_author_info(para1 para2) #调用时多余的参数无效且不会报错

# 创建一个简单的宏并调用 -> 有参数
# 宏中参数不是变量 在 if 中需要的取值符号访问
# 内置参数 ARGC 参数数量  ARGV0 参数值
macro(print_author_name arg)
    message("ARGC is " ${ARGC})
    message("ARGV is " ${ARGV0})
    message(${arg})
    if(${arg} STREQUAL "Chinese")
        message("向日葵骑士")
    else()
        message("Sunflower-knight")
    endif()
endmacro()
print_author_name(Chinese)#调用宏 将宏代码复制在此处
print_author_name(Chinese English)#调用宏->传入参数可以多
print_author_name(robot sun flower you)