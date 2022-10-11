#手动设置一个环境变量并打印
set(ENV{MY_LOVE} "RoboMaster")
message("My love is " $ENV{MY_LOVE})

# 已有的环境变量
#print username
message("My Name is " $ENV{USERNAME})
#print PATH in your system(window/system)
message("Path in my system  is " $ENV{PATH})