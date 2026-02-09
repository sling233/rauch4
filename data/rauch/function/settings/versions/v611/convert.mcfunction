#######################################################################
# called from foreach on storage map_data maps. $(index) provides current index
#######################################################################

# scale up by 10 just to be sure, should not be necassary though
$execute store result score red_y temp run data get storage map_data maps[$(index)].red[1] 10
$execute store result score center_y temp run data get storage map_data maps[$(index)].center[1] 10
$execute store result score blue_y temp run data get storage map_data maps[$(index)].blue[1] 10

scoreboard players remove red_y temp 200
scoreboard players remove center_y temp 200
scoreboard players remove blue_y temp 200

$execute store result storage map_data maps[$(index)].red[1] double 0.1 run scoreboard players get red_y temp
$execute store result storage map_data maps[$(index)].center[1] double 0.1 run scoreboard players get center_y temp
$execute store result storage map_data maps[$(index)].blue[1] double 0.1 run scoreboard players get blue_y temp

scoreboard players reset red_y temp
scoreboard players reset center_y temp
scoreboard players reset blue_y temp