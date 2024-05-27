# $(index) has index of current element in list
$data modify storage map_data temp set from storage map_data maps[$(index)]

# check if map is "official", else return
execute unless data storage map_data temp.version run return 0

scoreboard objectives add map_ver dummy
scoreboard objectives add map_id dummy
execute store result score Global map_ver run data get storage map_data temp.version
execute store result score Global map_id run data get storage map_data temp.id

# (change version when updating map) -------------------------------------- here
$execute if score Global map_id matches 1 unless score Global map_ver matches 2 run tellraw @a [{"text":"An Update is available for map Splat. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/splat/update {index:$(index)}"},"italic":true},{"text":" to update."}]
$execute if score Global map_id matches 1 unless score Global map_ver matches 2 run scoreboard players set #t_map_update_found global 1
$execute if score Global map_id matches 2 unless score Global map_ver matches 1 run tellraw @a [{"text":"An Update is available for map Ancient. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/ancient/update {index:$(index)}"},"italic":true},{"text":" to update."}]
$execute if score Global map_id matches 2 unless score Global map_ver matches 1 run scoreboard players set #t_map_update_found global 1
$execute if score Global map_id matches 3 unless score Global map_ver matches 2 run tellraw @a [{"text":"An Update is available for map Greck. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/greck/update {index:$(index)}"},"italic":true},{"text":" to update."}]
$execute if score Global map_id matches 3 unless score Global map_ver matches 2 run scoreboard players set #t_map_update_found global 1
$execute if score Global map_id matches 4 unless score Global map_ver matches 2 run tellraw @a [{"text":"An Update is available for map Mork. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/mork/update {index:$(index)}"},"italic":true},{"text":" to update."}]
$execute if score Global map_id matches 4 unless score Global map_ver matches 2 run scoreboard players set #t_map_update_found global 1
$execute if score Global map_id matches 5 unless score Global map_ver matches 2 run tellraw @a [{"text":"An Update is available for map Klotz 2.0. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/klotz/update {index:$(index)}"},"italic":true},{"text":" to update."}]
$execute if score Global map_id matches 5 unless score Global map_ver matches 2 run scoreboard players set #t_map_update_found global 1

scoreboard objectives remove map_ver
scoreboard objectives remove map_id

data remove storage map_data t_coords
# write data from temp
$data modify storage map_data maps[$(index)] set from storage map_data temp
data remove storage map_data temp
