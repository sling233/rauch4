# $(index) has index of map
# $(id) has id eg. Wokkacity has id wcity
tellraw @s {"text":"Updating, this might take a few seconds... ","color":"yellow"}

# get spawn coordinates for the map
$execute store result storage temp map.x int 1 run data get storage map_data maps[$(index)].spawn_location[0]
$execute store result storage temp map.y int 1 run data get storage map_data maps[$(index)].spawn_location[1]
$execute store result storage temp map.z int 1 run data get storage map_data maps[$(index)].spawn_location[2]

$data modify storage temp map.index set value $(index)

$execute store success score t_success temp run function rauch:settings/spawn_map/map/$(id) with storage temp map
data remove storage temp map

# not successful
execute if score t_success temp matches 0 run tellraw @s {"text":"Map could not update correctly as the area was not fully loaded.","color":"red"}
execute if score t_success temp matches 0 run return run scoreboard players reset * temp


# set new version
$data modify storage map_data maps[$(index)].version set from storage map_data versions[{id:$(id)}].version
$tellraw @s [{"text":"Updated Map ","color":"green"},{"nbt":"maps[$(index)].name","storage":"map_data","color":"light_purple"}]
data remove storage map_data active
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6
clear @a minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
