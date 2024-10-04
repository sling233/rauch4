# $(index) has index of current element in list

# check if map is "official", else return
$execute unless data storage map_data maps[$(index)].version run return 0

$execute store result score t_map_ver temp run data get storage map_data maps[$(index)].version
$execute store result score t_map_id temp run data get storage map_data maps[$(index)].id

# (change version when updating map) -------------------------------------- here
$execute if score t_map_id temp matches 1 unless score t_map_ver temp matches 6 run tellraw @a[tag=admin] [{"text":"An Update is available for map Splat. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/splat/update {index:$(index)}"},"italic":true},{"text":" to update."}]
execute if score t_map_id temp matches 1 unless score t_map_ver temp matches 6 run scoreboard players set #t_map_update_found global 1
$execute if score t_map_id temp matches 2 unless score t_map_ver temp matches 5 run tellraw @a[tag=admin] [{"text":"An Update is available for map Ancient. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/ancient/update {index:$(index)}"},"italic":true},{"text":" to update."}]
execute if score t_map_id temp matches 2 unless score t_map_ver temp matches 5 run scoreboard players set #t_map_update_found global 1
$execute if score t_map_id temp matches 3 unless score t_map_ver temp matches 4 run tellraw @a[tag=admin] [{"text":"An Update is available for map Greck. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/greck/update {index:$(index)}"},"italic":true},{"text":" to update."}]
execute if score t_map_id temp matches 3 unless score t_map_ver temp matches 4 run scoreboard players set #t_map_update_found global 1
$execute if score t_map_id temp matches 4 unless score t_map_ver temp matches 4 run tellraw @a[tag=admin] [{"text":"An Update is available for map Mork. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/mork/update {index:$(index)}"},"italic":true},{"text":" to update."}]
execute if score t_map_id temp matches 4 unless score t_map_ver temp matches 4 run scoreboard players set #t_map_update_found global 1
$execute if score t_map_id temp matches 5 unless score t_map_ver temp matches 4 run tellraw @a[tag=admin] [{"text":"An Update is available for map Klotz 2.0. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/klotz/update {index:$(index)}"},"italic":true},{"text":" to update."}]
execute if score t_map_id temp matches 5 unless score t_map_ver temp matches 4 run scoreboard players set #t_map_update_found global 1
$execute if score t_map_id temp matches 6 unless score t_map_ver temp matches 3 run tellraw @a[tag=admin] [{"text":"An Update is available for map Arena. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/arena/update {index:$(index)}"},"italic":true},{"text":" to update."}]
execute if score t_map_id temp matches 6 unless score t_map_ver temp matches 3 run scoreboard players set #t_map_update_found global 1
$execute if score t_map_id temp matches 7 unless score t_map_ver temp matches 1 run tellraw @a[tag=admin] [{"text":"An Update is available for map Trommlacherry. Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_map/cherry/update {index:$(index)}"},"italic":true},{"text":" to update."}]
execute if score t_map_id temp matches 7 unless score t_map_ver temp matches 1 run scoreboard players set #t_map_update_found global 1


scoreboard players reset t_map_ver temp
scoreboard players reset t_map_id temp
# write data from temp
#$data modify storage map_data maps[$(index)] set from storage map_data temp
