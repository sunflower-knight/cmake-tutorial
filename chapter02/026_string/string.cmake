message("字符串练习")

set(love "My love thing are cakes and RoboMaster")
set(truelove "RoboMaster")
string(FIND ${love} ${truelove} index)
string(FIND ${love} ${truelove} rindex REVERSE)

message("FIND pos is  "${index})
message("FIND rpos is  "${rindex})