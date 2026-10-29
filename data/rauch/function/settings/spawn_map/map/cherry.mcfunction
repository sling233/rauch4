# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].name set value "Trommlacherry"
$data modify storage map_data maps[$(index)].particle set value 12
$data modify storage map_data maps[$(index)].time set value 4
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 0
$data modify storage map_data maps[$(index)].is_dark set value 1

$execute positioned $(x) $(y) $(z) align xyz positioned ~13.5 ~47 ~23.5 summon marker run function rauch:settings/spawn_map/spawn_set_red {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~47.5 ~40 ~23.5 summon marker run function rauch:settings/spawn_map/spawn_set_center {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~81.5 ~47 ~23.5 summon marker run function rauch:settings/spawn_map/spawn_set_blue {index:$(index)}

$execute positioned $(x) $(y) $(z) align xyz store success score t_success_1 temp run place template rauch:cherry00 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_2 temp run place template rauch:cherry10 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_3 temp run place template rauch:cherry01 ~ ~48 ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_4 temp run place template rauch:cherry11 ~48 ~48 ~

# fill with void first because if the biome is cherry_grove already the command will fail
$execute positioned $(x) $(y) $(z) align xyz run fillbiome ~ ~ ~ ~92 ~79 ~47 minecraft:the_void
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_5 temp run fillbiome ~ ~ ~ ~92 ~79 ~47 minecraft:cherry_grove

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

execute if score t_success_1 temp matches 0 run return fail