data modify storage map_data maps prepend value {name:"{\"text\":\"Splat\"}",red:[],blue:[],center:[],particle:-1,time:-1}
data modify storage map_data maps[0].particle set value -1
data modify storage map_data maps[0].time set value -1

execute at @s align xyz run summon marker ~3.5 ~29 ~10.5 {Tags:["mapsetup","red"]}
execute at @s align xyz run summon marker ~36.5 ~27 ~10.5 {Tags:["mapsetup","cen"]}
execute at @s align xyz run summon marker ~68.5 ~29 ~10.5 {Tags:["mapsetup","blu"]}
data modify storage map_data maps[0].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
data modify storage map_data maps[0].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
data modify storage map_data maps[0].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos

data modify storage map_data maps append from storage map_data maps[0]
data remove storage map_data maps[0]

kill @e[type=marker,tag=mapsetup]
