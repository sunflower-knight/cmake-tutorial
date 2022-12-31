message("function 练习")

function(print_name name)
    message(${name})
    set(RET "1" PARENT_SCOPE) # 变量作用域 上升到父目录和函数调用者
endfunction()

set(name "knight")

print_name(${name})

message(${RET}) #调用函数后可以访问函数中定义的变量
