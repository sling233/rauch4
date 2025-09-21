kill @e[tag=lobby_entity]


execute store result storage temp lobby.x int 1 run data get storage lobby_data spawn_location[0]
execute store result storage temp lobby.y int 1 run data get storage lobby_data spawn_location[1]
execute store result storage temp lobby.z int 1 run data get storage lobby_data spawn_location[2]

tellraw @s {"text":"Updating lobby, this might take a few seconds... ","color":"yellow"}

execute store success score t_success temp run function rauch:settings/spawn_lobby/spawn_macro with storage temp lobby
data remove storage temp lobby

# not successful
execute if score t_success temp matches 0 run tellraw @s {"text":"Lobby could not update correctly as the area was not fully loaded.","color":"red"}
execute if score t_success temp matches 0 run return run scoreboard players reset * temp

#success
data modify storage lobby_data version set from storage lobby_data latest_version
tellraw @s [{"text":"Updated Lobby","color":"green"}]
function rauch:lobby/activate_lobby_settings
scoreboard players reset * temp