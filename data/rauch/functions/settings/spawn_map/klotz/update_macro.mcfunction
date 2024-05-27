# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].version set value 1
$data modify storage map_data maps[$(index)].particle set value -1
$data modify storage map_data maps[$(index)].time set value -1

$execute positioned $(x) $(y) $(z) align xyz run summon marker ~9.5 ~39 ~2.5 {Tags:["mapsetup","red"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~23.5 ~34.5 ~23.5 {Tags:["mapsetup","cen"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~37.5 ~39 ~44.5 {Tags:["mapsetup","blu"]}
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:klotz ~ ~ ~

$data modify storage map_data maps[$(index)].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
$data modify storage map_data maps[$(index)].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
$data modify storage map_data maps[$(index)].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos
kill @e[type=marker,tag=mapsetup]
