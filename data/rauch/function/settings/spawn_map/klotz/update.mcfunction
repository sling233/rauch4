# $(index) has index of map
# get spawn coordinates for the map
$execute store result storage temp map.x int 1 run data get storage map_data maps[$(index)].spawn_location[0]
$execute store result storage temp map.y int 1 run data get storage map_data maps[$(index)].spawn_location[1]
$execute store result storage temp map.z int 1 run data get storage map_data maps[$(index)].spawn_location[2]

$data modify storage temp map.index set value $(index)

function rauch:settings/spawn_map/klotz/update_macro with storage temp map

data remove storage temp map
data remove storage map_data active
tellraw @s [{"text":"Updated Map Klotz 2.0","color":"green"}]
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6
