# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].name set value "Trommlacherry"
$data modify storage map_data maps[$(index)].particle set value 12
$data modify storage map_data maps[$(index)].time set value 4
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 0
$data modify storage map_data maps[$(index)].is_dark set value 1

$execute positioned $(x) $(y) $(z) align xyz positioned ~13.5 ~67 ~23.5 summon marker run function rauch:settings/spawn_map/spawn_set_red {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~47.5 ~60 ~23.5 summon marker run function rauch:settings/spawn_map/spawn_set_center {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~81.5 ~67 ~23.5 summon marker run function rauch:settings/spawn_map/spawn_set_blue {index:$(index)}

$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry00 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry10 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry01 ~ ~48 ~
$execute positioned $(x) $(y) $(z) align xyz run place template rauch:cherry11 ~48 ~48 ~

#fillbiome
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~ ~ ~92 ~3 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~4 ~ ~92 ~7 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~8 ~ ~92 ~11 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~12 ~ ~92 ~15 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~16 ~ ~92 ~19 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~20 ~ ~92 ~23 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~24 ~ ~92 ~27 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~28 ~ ~92 ~31 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~32 ~ ~92 ~35 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~36 ~ ~92 ~39 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~40 ~ ~92 ~43 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~44 ~ ~92 ~47 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~48 ~ ~92 ~51 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~52 ~ ~92 ~55 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~56 ~ ~92 ~59 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~60 ~ ~92 ~63 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~64 ~ ~92 ~67 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~68 ~ ~92 ~71 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~72 ~ ~92 ~75 ~47 minecraft:cherry_grove
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~76 ~ ~92 ~79 ~47 minecraft:cherry_grove
