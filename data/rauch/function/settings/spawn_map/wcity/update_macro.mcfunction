# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].version set value 3
$data modify storage map_data maps[$(index)].particle set value -1
$data modify storage map_data maps[$(index)].time set value 4
$data modify storage map_data maps[$(index)].weather set value 2
$data modify storage map_data maps[$(index)].has_launchpads set value 1
$data modify storage map_data maps[$(index)].disable_block_interaction set value 1
$data modify storage map_data maps[$(index)].is_dark set value 1
$data modify storage map_data maps[$(index)].name set value "Wokkacity"

$execute positioned $(x) $(y) $(z) align xyz run summon marker ~20 ~57 ~14.5 {Tags:["mapsetup","red"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~33.5 ~25 ~23.5 {Tags:["mapsetup","cen"]}
$execute positioned $(x) $(y) $(z) align xyz run summon marker ~33.5 ~25 ~23.5 {Tags:["mapsetup","blu"]}

#fill structure void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~0 ~ ~66 ~6 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~7 ~ ~66 ~13 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~14 ~ ~66 ~20 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~21 ~ ~66 ~27 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~28 ~ ~66 ~34 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~35 ~ ~66 ~41 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~42 ~ ~66 ~48 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~49 ~ ~66 ~55 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~56 ~ ~66 ~62 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~63 ~ ~66 ~69 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~70 ~ ~66 ~76 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~77 ~ ~66 ~83 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~84 ~ ~66 ~90 ~67 minecraft:structure_void
$execute positioned $(x) $(y) $(z) align xyz run fill ~ ~91 ~ ~66 ~96 ~67 minecraft:structure_void

#spawn map
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity111 ~48 ~48 ~48
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity110 ~48 ~48 ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity101 ~48 ~ ~48
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity100 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity011 ~ ~48 ~48
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity010 ~ ~48 ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity001 ~ ~ ~48
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:wcity000 ~ ~ ~

#set some dripleaves
$execute positioned $(x) $(y) $(z) align xyz run setblock ~45 ~13 ~46 minecraft:air
$execute positioned $(x) $(y) $(z) align xyz run setblock ~45 ~14 ~46 minecraft:big_dripleaf[facing=west]
$execute positioned $(x) $(y) $(z) align xyz run setblock ~49 ~13 ~46 minecraft:air
$execute positioned $(x) $(y) $(z) align xyz run setblock ~49 ~14 ~46 minecraft:big_dripleaf[facing=south]

$data modify storage map_data maps[$(index)].red set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
$data modify storage map_data maps[$(index)].blue set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
$data modify storage map_data maps[$(index)].center set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos
kill @e[type=marker,tag=mapsetup]
