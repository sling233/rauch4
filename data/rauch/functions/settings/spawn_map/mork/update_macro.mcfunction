# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].version set value 1
$data modify storage map_data maps[$(index)].particle set value -1
$data modify storage map_data maps[$(index)].time set value -1

$execute positioned $(x) $(y) $(z) align xyz run summon marker ~3.5 ~30 ~12.5 {Tags:["mapsetup","red"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~38.5 ~29 ~12.5 {Tags:["mapsetup","cen"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~73.5 ~30 ~12.5 {Tags:["mapsetup","blu"]}
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:mork1 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:mork2 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz run fill ~33.5 ~8 ~16.5 ~29.5 ~8 ~21.5 big_dripleaf
$execute positioned $(x) $(y) $(z) align xyz run fill ~43.5 ~8 ~8.5 ~47.5 ~8 ~3.5 big_dripleaf[facing=south]

$data modify storage map_data maps[$(index)].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
$data modify storage map_data maps[$(index)].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
$data modify storage map_data maps[$(index)].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos
kill @e[type=marker,tag=mapsetup]
