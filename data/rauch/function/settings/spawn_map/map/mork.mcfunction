# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].name set value "Mork"
$data modify storage map_data maps[$(index)].particle set value 11
$data modify storage map_data maps[$(index)].time set value -1
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 0
$data modify storage map_data maps[$(index)].is_dark set value 0

$execute positioned $(x) $(y) $(z) align xyz positioned ~4.5 ~30 ~13.5 summon marker run function rauch:settings/spawn_map/spawn_set_red {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~39.5 ~29 ~13.5 summon marker run function rauch:settings/spawn_map/spawn_set_center {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~74.5 ~30 ~13.5 summon marker run function rauch:settings/spawn_map/spawn_set_blue {index:$(index)}

$execute positioned $(x) $(y) $(z) align xyz store success score t_success_1 temp run place template rauch:mork1 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_2 temp run place template rauch:mork2 ~48 ~ ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_3 temp run fill ~34.5 ~8 ~17.5 ~30.5 ~8 ~22.5 big_dripleaf
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_4 temp run fill ~44.5 ~8 ~9.5 ~48.5 ~8 ~4.5 big_dripleaf[facing=south]

scoreboard players operation t_success_1 temp *= t_success_2 temp
scoreboard players operation t_success_1 temp *= t_success_2 temp
scoreboard players operation t_success_1 temp *= t_success_3 temp
scoreboard players operation t_success_1 temp *= t_success_4 temp
execute if score t_success_1 temp matches 0 run tellraw @s {"text":"Map could not spawn correctly as the area was not fully loaded.","color":"red"}

scoreboard players reset * temp