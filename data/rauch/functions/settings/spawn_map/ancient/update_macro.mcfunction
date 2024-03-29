# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].version set value 1
$data modify storage map_data maps[$(index)].particle set value -1
$data modify storage map_data maps[$(index)].time set value -1

$execute positioned $(x) $(y) $(z) align xyz run summon marker ~3.5 ~24 ~20.5 {Tags:["mapsetup","red"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~32.5 ~23 ~20.5 {Tags:["mapsetup","cen"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~60.5 ~24 ~20.5 {Tags:["mapsetup","blu"]}
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:ancient1 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:ancient2 ~47 ~ ~

$data modify storage map_data maps[$(index)].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
$data modify storage map_data maps[$(index)].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
$data modify storage map_data maps[$(index)].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos
kill @e[type=marker,tag=mapsetup]
