# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].version set value 4
$data modify storage map_data maps[$(index)].particle set value 11
$data modify storage map_data maps[$(index)].time set value -1
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 0
$data modify storage map_data maps[$(index)].is_dark set value 0
$data modify storage map_data maps[$(index)].name set value "Mork"

$execute positioned $(x) $(y) $(z) align xyz run summon marker ~4.5 ~30 ~13.5 {Tags:["mapsetup","red"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~39.5 ~29 ~13.5 {Tags:["mapsetup","cen"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~74.5 ~30 ~13.5 {Tags:["mapsetup","blu"]}
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:mork1 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:mork2 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz run fill ~34.5 ~8 ~17.5 ~30.5 ~8 ~22.5 big_dripleaf
$execute positioned $(x) $(y) $(z) align xyz run fill ~44.5 ~8 ~9.5 ~48.5 ~8 ~4.5 big_dripleaf[facing=south]

$data modify storage map_data maps[$(index)].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
$data modify storage map_data maps[$(index)].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
$data modify storage map_data maps[$(index)].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos
kill @e[type=marker,tag=mapsetup]
