data modify storage map_data maps prepend value {name:"{\"text\":\"Greck\"}",red:[],blue:[],center:[],particle:-1,time:-1}
data modify storage map_data maps[0].particle set value 2
data modify storage map_data maps[0].time set value -1

execute at @s align xyz run summon marker ~3.5 ~29 ~11.5 {Tags:["mapsetup","red"]}
execute at @s align xyz run summon marker ~42.5 ~24 ~11.5 {Tags:["mapsetup","cen"]}
execute at @s align xyz run summon marker ~81.5 ~29 ~11.5 {Tags:["mapsetup","blu"]}
data modify storage map_data maps[0].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
data modify storage map_data maps[0].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
data modify storage map_data maps[0].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos

data modify storage map_data maps append from storage map_data maps[0]
data remove storage map_data maps[0]

kill @e[type=marker,tag=mapsetup]
