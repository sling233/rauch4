data modify storage map_data maps prepend value {name:"{\"text\":\"Arena\"}",id:6,red:[],blue:[],center:[],particle:-1,time:-1,version:-1,spawn_location:[]}
# remember to change the these values in update_macro as well
data modify storage map_data maps[0].version set value 1
data modify storage map_data maps[0].particle set value -1
data modify storage map_data maps[0].time set value -1
data modify storage map_data maps[0].spawn_location set from entity @s Pos

# remember to change the offsets in update as well
execute at @s align xyz run summon marker ~2.5 ~22 ~15.5 {Tags:["mapsetup","red"]}
execute at @s align xyz run summon marker ~30.5 ~22 ~15.5 {Tags:["mapsetup","cen"]}
execute at @s align xyz run summon marker ~58.5 ~22 ~15.5 {Tags:["mapsetup","blu"]}
data modify storage map_data maps[0].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
data modify storage map_data maps[0].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
data modify storage map_data maps[0].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos

data modify storage map_data maps append from storage map_data maps[0]
data remove storage map_data maps[0]

kill @e[type=marker,tag=mapsetup]