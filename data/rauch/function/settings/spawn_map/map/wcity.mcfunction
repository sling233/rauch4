# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].name set value "Wokkacity"
$data modify storage map_data maps[$(index)].particle set value -1
$data modify storage map_data maps[$(index)].time set value 4
$data modify storage map_data maps[$(index)].weather set value 2
$data modify storage map_data maps[$(index)].has_launchpads set value 1
$data modify storage map_data maps[$(index)].disable_block_interaction set value 1
$data modify storage map_data maps[$(index)].is_dark set value 1

$execute positioned $(x) $(y) $(z) align xyz positioned ~20 ~36 ~24.5 summon marker run function rauch:settings/spawn_map/spawn_set_red {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~33.5 ~3.5 ~33.5 summon marker run function rauch:settings/spawn_map/spawn_set_center {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~33.5 ~3.5 ~33.5 summon marker run function rauch:settings/spawn_map/spawn_set_blue {index:$(index)}

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
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_1 temp run place template rauch:wcity111 ~48 ~48 ~48
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_2 temp run place template rauch:wcity110 ~48 ~48 ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_3 temp run place template rauch:wcity101 ~48 ~ ~48
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_4 temp run place template rauch:wcity100 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_5 temp run place template rauch:wcity011 ~ ~48 ~48
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_6 temp run place template rauch:wcity010 ~ ~48 ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_7 temp run place template rauch:wcity001 ~ ~ ~48
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_8 temp run place template rauch:wcity000 ~ ~ ~

#set some dripleaves
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_9 temp run setblock ~45 ~13 ~46 minecraft:air
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_10 temp run setblock ~45 ~14 ~46 minecraft:big_dripleaf[facing=west]
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_11 temp run setblock ~49 ~13 ~46 minecraft:air
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_12 temp run setblock ~49 ~14 ~46 minecraft:big_dripleaf[facing=south]

# set biome
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_13 temp run fillbiome ~ ~ ~ ~66 ~5 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_14 temp run fillbiome ~ ~6 ~ ~66 ~10 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_15 temp run fillbiome ~ ~11 ~ ~66 ~15 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_16 temp run fillbiome ~ ~16 ~ ~66 ~20 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_17 temp run fillbiome ~ ~21 ~ ~66 ~25 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_18 temp run fillbiome ~ ~26 ~ ~66 ~30 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_19 temp run fillbiome ~ ~31 ~ ~66 ~35 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_20 temp run fillbiome ~ ~36 ~ ~66 ~40 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_21 temp run fillbiome ~ ~41 ~ ~66 ~45 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_22 temp run fillbiome ~ ~46 ~ ~66 ~50 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_23 temp run fillbiome ~ ~51 ~ ~66 ~55 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_24 temp run fillbiome ~ ~56 ~ ~66 ~60 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_25 temp run fillbiome ~ ~61 ~ ~66 ~65 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_26 temp run fillbiome ~ ~66 ~ ~66 ~70 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_27 temp run fillbiome ~ ~71 ~ ~66 ~75 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_28 temp run fillbiome ~ ~76 ~ ~66 ~80 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_29 temp run fillbiome ~ ~81 ~ ~66 ~85 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_30 temp run fillbiome ~ ~86 ~ ~66 ~90 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_31 temp run fillbiome ~ ~91 ~ ~66 ~95 ~66 minecraft:dark_forest
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_32 temp run fillbiome ~ ~96 ~ ~66 ~98 ~66 minecraft:dark_forest

scoreboard players operation t_success_1 temp *= t_success_2 temp
scoreboard players operation t_success_1 temp *= t_success_3 temp
scoreboard players operation t_success_1 temp *= t_success_4 temp
scoreboard players operation t_success_1 temp *= t_success_5 temp
scoreboard players operation t_success_1 temp *= t_success_6 temp
scoreboard players operation t_success_1 temp *= t_success_7 temp
scoreboard players operation t_success_1 temp *= t_success_8 temp
scoreboard players operation t_success_1 temp *= t_success_9 temp
scoreboard players operation t_success_1 temp *= t_success_10 temp
scoreboard players operation t_success_1 temp *= t_success_11 temp
scoreboard players operation t_success_1 temp *= t_success_12 temp
scoreboard players operation t_success_1 temp *= t_success_13 temp
scoreboard players operation t_success_1 temp *= t_success_14 temp
scoreboard players operation t_success_1 temp *= t_success_15 temp
scoreboard players operation t_success_1 temp *= t_success_16 temp
scoreboard players operation t_success_1 temp *= t_success_17 temp
scoreboard players operation t_success_1 temp *= t_success_18 temp
scoreboard players operation t_success_1 temp *= t_success_19 temp
scoreboard players operation t_success_1 temp *= t_success_20 temp
scoreboard players operation t_success_1 temp *= t_success_21 temp
scoreboard players operation t_success_1 temp *= t_success_22 temp
scoreboard players operation t_success_1 temp *= t_success_23 temp
scoreboard players operation t_success_1 temp *= t_success_24 temp
scoreboard players operation t_success_1 temp *= t_success_25 temp
scoreboard players operation t_success_1 temp *= t_success_26 temp
scoreboard players operation t_success_1 temp *= t_success_27 temp
scoreboard players operation t_success_1 temp *= t_success_28 temp
scoreboard players operation t_success_1 temp *= t_success_29 temp
scoreboard players operation t_success_1 temp *= t_success_30 temp
scoreboard players operation t_success_1 temp *= t_success_31 temp
scoreboard players operation t_success_1 temp *= t_success_32 temp

execute if score t_success_1 temp matches 0 run return fail