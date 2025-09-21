# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].name set value "Greck"
$data modify storage map_data maps[$(index)].particle set value 2
$data modify storage map_data maps[$(index)].time set value -1
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 0
$data modify storage map_data maps[$(index)].is_dark set value 0

$execute positioned $(x) $(y) $(z) align xyz positioned ~4.5 ~29 ~12.5 summon marker run function rauch:settings/spawn_map/spawn_set_red {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~43.5 ~24 ~12.5 summon marker run function rauch:settings/spawn_map/spawn_set_center {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~82.5 ~29 ~12.5 summon marker run function rauch:settings/spawn_map/spawn_set_blue {index:$(index)}

$execute positioned $(x) $(y) $(z) align xyz store success score t_success_1 temp run place template rauch:greck1 ~ ~ ~
$execute positioned $(x) $(y) $(z) align xyz store success score t_success_2 temp run place template rauch:greck2 ~48 ~ ~

scoreboard players operation t_success_1 temp *= t_success_2 temp

execute if score t_success_1 temp matches 0 run return fail