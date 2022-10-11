message(STATUS "引入天堂公司属性设置")

set_property(GLOBAL PROPERTY author "SunFlower-Knight")

# 往一个属性中存值的时候在后面追加
set_property(GLOBAL APPEND PROPERTY all_authors "向日葵骑士-")
set_property(GLOBAL APPEND PROPERTY all_authors "风信子的猫-")
set_property(GLOBAL APPEND PROPERTY all_authors "江湖诗人-")
# 修改已有的属性

