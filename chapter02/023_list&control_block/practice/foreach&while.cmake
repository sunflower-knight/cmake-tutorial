message("----------------------------------foreach 和 while 练习")

## 1. loop 变量 从0开始到 stop
message("----------------------------------foreach(<loop_var> RANGE <stop>)")
foreach(var RANGE 20)
    if(var EQUAL 5)
        continue() #跳过
    endif()
    if(var EQUAL 10)#退出
        break()
    endif()
    message("item is " ${var})
endforeach()

# 2. 指定 起始结束范围 和 步长
message("-----------------------------------foreach(<loop_var> RANGE <start> <stop> [<step>])")
foreach(var RANGE 2 20 2)
    message("var is " ${var})
endforeach()


## foreach 访问数组 先遍历第一个list 再遍历下一个
message("-----------------------------------foreach(<loop_var> IN LISTS [<lists>])")
set(love "robot" "tiger" "flower" "you")
set(hate "bug" "mouse")
foreach(var IN LISTS love hate)
    message("love hate  " ${var})
endforeach()

## foreach ZIP_LISTS 同时同步遍历多个数组 -> cmake version >= 3.17
message("-----------------------------------foreach(<loop_var> IN ZIP_LISTS [<lists>])")
set(Love_English "robot" "tiger" "flower" "you")
set(Love_Chinese "机器人" "老虎" "花" "你")
foreach(en cn  IN ZIP_LISTS Love_English Love_Chinese)
    message(" i love " ${en} " in Chinese is 我喜欢 " ${cn} " ")
endforeach()

##### TODO 不熟悉 不太会用->
#foreach(var IN ITEMS [<items>])

message("----------------------------------------while")
while(true)
    break()
endwhile()