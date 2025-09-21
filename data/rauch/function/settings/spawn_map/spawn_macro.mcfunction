tellraw @s {"text":"Spawning map, this might take a few seconds... ","color":"yellow"}
# $(id) has id of map eg. Wokkacity has path wcity
data modify storage map_data maps prepend value {}

$data modify storage map_data maps[0].id set value $(id)
$data modify storage map_data maps[0].version set from storage map_data versions[{id:$(id)}].version
data modify storage map_data maps[0].spawn_location set from entity @s Pos

execute store result storage temp map.x int 1 run data get storage map_data maps[0].spawn_location[0]
execute store result storage temp map.y int 1 run data get storage map_data maps[0].spawn_location[1]
execute store result storage temp map.z int 1 run data get storage map_data maps[0].spawn_location[2]
data modify storage temp map.index set value 0

$execute store success score t_success temp run function rauch:settings/spawn_map/map/$(id) with storage temp map
data remove storage temp map

# not successful
execute if score t_success temp matches 0 run tellraw @s {"text":"Map could not spawn correctly as the area was not fully loaded.","color":"red"}
execute if score t_success temp matches 0 run data remove storage map_data maps[0]
execute if score t_success temp matches 0 run return run scoreboard players reset * temp


# success
tellraw @s [{"text":"Spawned Map ","color":"green"},{"nbt":"maps[0].name","storage":"map_data"}]

data modify storage map_data maps append from storage map_data maps[0]
data remove storage map_data maps[0]
clear @a minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
scoreboard players reset * temp