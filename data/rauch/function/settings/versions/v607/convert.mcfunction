#######################################################################
# called from foreach on storage map_data maps. $(index) provides current index
#######################################################################

# if its not an "official" map, return
$execute unless data storage map_data maps[$(index)].id run return 0

$execute store result score t_map_id temp run data get storage map_data maps[$(index)].id

$execute if score t_map_id temp matches 1 run data modify storage map_data maps[$(index)].id set value "splat"
$execute if score t_map_id temp matches 2 run data modify storage map_data maps[$(index)].id set value "ancient"
$execute if score t_map_id temp matches 3 run data modify storage map_data maps[$(index)].id set value "greck"
$execute if score t_map_id temp matches 4 run data modify storage map_data maps[$(index)].id set value "mork"
$execute if score t_map_id temp matches 5 run data modify storage map_data maps[$(index)].id set value "klotz"
$execute if score t_map_id temp matches 6 run data modify storage map_data maps[$(index)].id set value "arena"
$execute if score t_map_id temp matches 7 run data modify storage map_data maps[$(index)].id set value "cherry"
$execute if score t_map_id temp matches 8 run data modify storage map_data maps[$(index)].id set value "wcity"

scoreboard players reset t_map_id temp
