# $x,$y,$z have the spawn coordinates for the map, $(index) the index
# map values
$data modify storage map_data maps[$(index)].name set value "Klotz 2.0"
$data modify storage map_data maps[$(index)].particle set value -1
$data modify storage map_data maps[$(index)].time set value -1
$data modify storage map_data maps[$(index)].weather set value 1
$data modify storage map_data maps[$(index)].has_launchpads set value 0
$data modify storage map_data maps[$(index)].disable_block_interaction set value 0
$data modify storage map_data maps[$(index)].is_dark set value 1

$execute positioned $(x) $(y) $(z) align xyz positioned ~9.5 ~39 ~2.5 summon marker run function rauch:settings/spawn_map/spawn_set_red {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~23.5 ~34.5 ~23.5 summon marker run function rauch:settings/spawn_map/spawn_set_center {index:$(index)}
$execute positioned $(x) $(y) $(z) align xyz positioned ~37.5 ~39 ~44.5 summon marker run function rauch:settings/spawn_map/spawn_set_blue {index:$(index)}

$execute positioned $(x) $(y) $(z) align xyz store success score t_success_1 temp run place template rauch:klotz ~ ~ ~

execute if score t_success_1 temp matches 0 run return fail