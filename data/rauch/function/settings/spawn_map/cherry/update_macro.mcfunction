# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].version set value 0
$data modify storage map_data maps[$(index)].particle set value 12
$data modify storage map_data maps[$(index)].time set value 4
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 0
$data modify storage map_data maps[$(index)].name set value "Trommlacherry"

$execute positioned $(x) $(y) $(z) align xyz run summon marker ~13.5 ~67 ~23.5 {Tags:["mapsetup","red"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~47.5 ~60 ~23.5 {Tags:["mapsetup","cen"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~81.5 ~67 ~23.5 {Tags:["mapsetup","blu"]}
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry00 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry10 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry01 ~ ~48 ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry11 ~48 ~48 ~


$data modify storage map_data maps[$(index)].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
$data modify storage map_data maps[$(index)].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
$data modify storage map_data maps[$(index)].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos
kill @e[type=marker,tag=mapsetup]
