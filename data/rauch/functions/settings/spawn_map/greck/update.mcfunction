# $(index) has index of map
# get spawn coordinates for the map
$execute store result storage map_data temp.x int 1 run data get storage map_data maps[$(index)].spawn_location[0]
$execute store result storage map_data temp.y int 1 run data get storage map_data maps[$(index)].spawn_location[1]
$execute store result storage map_data temp.z int 1 run data get storage map_data maps[$(index)].spawn_location[2]

$data modify storage map_data temp.index set value $(index)

function rauch:settings/spawn_map/greck/update_macro with storage map_data temp

data remove storage map_data temp
tellraw @s [{"text":"Updated Map Greck","color":"green"}]
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6
