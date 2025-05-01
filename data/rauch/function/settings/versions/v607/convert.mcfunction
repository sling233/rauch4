#######################################################################
# called from foreach on storage map_data maps. $(index) provides current index
#######################################################################

# if its not an "official" map, return
$execute unless data storage map_data maps[$(index)].id run return 0

# check if id is int (it could be a string with some weird downpatching stuff
data modify storage temp string_array set value [I;-1]
$execute store success score t_is_int temp run data modify storage temp string_array[0] set from storage map_data maps[$(index)].id
data remove storage temp string_array
$execute unless score t_is_int temp matches 1 run return run tellraw @s [\
{"text":"Map \"","color":"yellow"},{"storage":"map_data","nbt":"maps[$(index)].name","color":"light_purple"},\
{"text":"\" is already up to date somehow.","color":"yellow"}]
execute unless score t_is_int temp matches 1 run return run scoreboard players reset t_is_int temp
scoreboard players reset t_is_int temp

$execute store result score t_map_id temp run data get storage map_data maps[$(index)].id

$execute if score t_map_id temp matches 1 run data modify storage map_data maps[$(index)].id set value "splat"
$execute if score t_map_id temp matches 2 run data modify storage map_data maps[$(index)].id set value "ancient"
$execute if score t_map_id temp matches 3 run data modify storage map_data maps[$(index)].id set value "greck"
$execute if score t_map_id temp matches 4 run data modify storage map_data maps[$(index)].id set value "mork"
$execute if score t_map_id temp matches 5 run data modify storage map_data maps[$(index)].id set value "klotz"
$execute if score t_map_id temp matches 6 run data modify storage map_data maps[$(index)].id set value "arena"
$execute if score t_map_id temp matches 7 run data modify storage map_data maps[$(index)].id set value "cherry"
$execute if score t_map_id temp matches 8 run data modify storage map_data maps[$(index)].id set value "wcity"

$tellraw @s [{"text":"Map \"","color":"yellow"},{"storage":"map_data","nbt":"maps[$(index)].name","color":"light_purple"},{"text":"\" id is now \"","color":"yellow"},{"storage":"map_data","nbt":"maps[$(index)].id","color":"light_purple"},{"text":"\". (if this seems off, something went wrong)","color":"yellow"}]


scoreboard players reset t_map_id temp
