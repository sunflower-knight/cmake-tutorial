message(STATUS "---------------------------ifelse")

if(1)
    message("1 is true")
endif()

if(0)
    message("0 is true")
else()
    message("0 is false")
endif()

if(YES)
    message("1 is true")
endif()

if(NO)
    message("NO is true")
else()
    message("NO is FALSE")
endif()

set(VAR) #变量定义但是未赋值
if(VAR)
    message("VAR is true")
else()
    message("VAR is FALSE")
endif()

set(VAR_B TURE)
if(VAR_B)#if 语句中不需要用变量的解引用
    message("VAR_B is true")
else()
    message("VAR_B is FALSE")
endif()

# 逻辑运算符实验
if(VAR_B OR VAR) #if 语句中不需要用变量的解引用
    message("a least one of them is true")
else()
    message("all of them is false")
endif()

# 逻辑运算符实验
if(VAR_B AND (NOT VAR))
    message("all of them is true")
else()
    message("all of them is false")
endif()

# 判断变量是否定义
if(DEFINED VAR)
    message("VAR is not defined")
else()
    message("VAR is defined as ${VAR}")
endif()

# if 版本环境检查
if(${CMAKE_VERSION} VERSION_GREATER_EQUAL 3.20)
    message("版本太高")
elseif(${CMAKE_VERSION} VERSION_LESS 3.20)
    message("版本太低")
endif()

message(STATUS "-----------------------------------")