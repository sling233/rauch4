# set lobby data
data modify storage lobby_data version set from storage lobby_data latest_version

data modify storage lobby_data spawn_location set from entity @s Pos

execute store result storage temp lobby.x int 1 run data get storage lobby_data spawn_location[0]
execute store result storage temp lobby.y int 1 run data get storage lobby_data spawn_location[1]
execute store result storage temp lobby.z int 1 run data get storage lobby_data spawn_location[2]

tellraw @s {"text":"Spawning lobby, this might take a few seconds... ","color":"yellow"}

function rauch:settings/spawn_lobby/spawn_macro with storage temp lobby
data remove storage temp lobby

tellraw @s [{"text":"Spawned Lobby","color":"green"}]
function rauch:lobby/activate_lobby_settings