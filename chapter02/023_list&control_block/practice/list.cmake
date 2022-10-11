message("-----------------------------list 语法训练小节")

#1. 创建一个数组 只有一个元素
set(love "RoboMaster")
message("list init with one element -> " ${love})

#2. 数组元末尾素追加
#list(APPEND <list> [<element>...])
list(APPEND love "Knight")
list(APPEND love "Flower")
list(APPEND love "Knowledge")
list(APPEND love "Book")
message("append some element after the list  -> " ${love})

#3. 根据下标插入元素
#list(INSERT <list> <index> [<element>...])
list(INSERT love 0 "Tiger")
message("insert Tiger before -> " ${love})


#双向队列操作方式
#list(POP_BACK <list> [<out-var>...])
list(POP_BACK love end)
message("pop end is " ${end})
#list(POP_FRONT <list> [<out-var>...] love end)
#message("pop end is " ${end})


#4. 根据下标删除 + 根据内容删除
#list(REMOVE_AT <list> <index>...)
#list(REMOVE_ITEM <list> <value>...)
list(REMOVE_AT love -2)
list(REMOVE_ITEM love sunflower)
message("delete two element -> " ${love})

#4. 获取变量的长度输出到变量中
#list(LENGTH <list> <out-var>)
list(LENGTH love length)
message("length of this list is " ${length} " now")

#5. 下标访问 0 1 2  -1 -2
#list(GET <list> <element index> [<index> ...] <out-var>)
list(GET love -1 truelove)
message("true love is ${truelove}")
list(GET love 0 home)
message("my home is ${home}")

#7. 查找元素并得到的下标
list(FIND love "RoboMaster" pos_rm)
message("begin for RoboMaster in " ${pos_rm} "")
list(LENGTH love length)

#取其中的一部分内容
list(SUBLIST love  ${pos_rm} ${length} sub_love)
message("sub love is " ${sub_love}  )

#拼接 glue 表示胶水 即拼接时插入在中间内容
#list(JOIN <list> <glue> <out-var>)
list(JOIN love " | " all_my_love)
message("all love is "${all_my_love})




#去除重复元素
#list(REMOVE_DUPLICATES <list>)
set(temp "flower" "tiger" "tiger")
message("with duplicates items " ${temp})
list(REMOVE_DUPLICATES temp)
message("delete duplicates -> " ${temp})

#排序 -> 不做示例
#list(SORT <list> [COMPARE <compare>] [CASE <case>] [ORDER <order>])

message("-------------------------------------------")
