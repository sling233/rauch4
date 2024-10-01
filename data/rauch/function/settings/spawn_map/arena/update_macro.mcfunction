# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].version set value 3
$data modify storage map_data maps[$(index)].particle set value -1
$data modify storage map_data maps[$(index)].time set value -1
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 1
$data modify storage map_data maps[$(index)].name set value "Arena"

$execute positioned $(x) $(y) $(z) align xyz run summon marker ~2.5 ~22 ~15.5 {Tags:["mapsetup","red"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~30.5 ~22 ~15.5 {Tags:["mapsetup","cen"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~58.5 ~22 ~15.5 {Tags:["mapsetup","blu"]}
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:arena1 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:arena2 ~48 ~ ~

$data modify storage map_data maps[$(index)].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
$data modify storage map_data maps[$(index)].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
$data modify storage map_data maps[$(index)].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos
kill @e[type=marker,tag=mapsetup]
