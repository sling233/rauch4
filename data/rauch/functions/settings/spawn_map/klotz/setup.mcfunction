data modify storage map_data maps prepend value {name:"{\"text\":\"Klotz 2.0\"}",red:[],blue:[],center:[],particle:-1,time:-1,id:5,version:1,spawn_location:[]}
data modify storage map_data maps[0].particle set value -1
data modify storage map_data maps[0].time set value -1
data modify storage map_data maps[0].spawn_location set from entity @s Pos

# remember to change the offsets in spawn as well
execute at @s align xyz run summon marker ~9.5 ~39 ~2.5 {Tags:["mapsetup","red"]}
execute at @s align xyz run summon marker ~23.5 ~34 ~23.5 {Tags:["mapsetup","cen"]}
execute at @s align xyz run summon marker ~37.5 ~39 ~44.5 {Tags:["mapsetup","blu"]}
data modify storage map_data maps[0].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
data modify storage map_data maps[0].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
data modify storage map_data maps[0].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos

data modify storage map_data maps append from storage map_data maps[0]
data remove storage map_data maps[0]

kill @e[type=marker,tag=mapsetup]
