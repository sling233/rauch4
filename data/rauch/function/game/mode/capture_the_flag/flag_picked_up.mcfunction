############ calculate distance ##############
# x
execute store result score t_delta_x_red temp run data get entity @s Pos[0] 1000
scoreboard players operation t_delta_x_blu temp = t_delta_x_red temp
execute store result score t_spawn_red_x temp run data get entity @e[type=marker,tag=map,tag=t1,limit=1] Pos[0] 1000
execute store result score t_spawn_blue_x temp run data get entity @e[type=marker,tag=map,tag=t2,limit=1] Pos[0] 1000
scoreboard players operation t_delta_x_red temp -= t_spawn_red_x temp
scoreboard players operation t_delta_x_blu temp -= t_spawn_blue_x temp
# z
execute store result score t_delta_z_red temp run data get entity @s Pos[2] 1000
scoreboard players operation t_delta_z_blu temp = t_delta_z_red temp
execute store result score t_spawn_red_z temp run data get entity @e[type=marker,tag=map,tag=t1,limit=1] Pos[2] 1000
execute store result score t_spawn_blue_z temp run data get entity @e[type=marker,tag=map,tag=t2,limit=1] Pos[2] 1000
scoreboard players operation t_delta_z_red temp -= t_spawn_red_z temp
scoreboard players operation t_delta_z_blu temp -= t_spawn_blue_z temp

execute at @s run summon item_display ~ ~ ~ {UUID:[I;-698710071,-633058886,-1943178672,1016033168]}

# calculate distance 1
execute store result storage temp distance.x float 0.001 run scoreboard players get t_delta_x_red temp
execute store result storage temp distance.z float 0.001 run scoreboard players get t_delta_z_red temp
function rauch:game/mode/capture_the_flag/get_distance_macro with storage temp distance
execute store result score Global flagDistanceRed run data get entity d65a87c9-da44-49ba-8c2d-72503c8f6f90 transformation.scale[0] 1000

# calculate distance 2
execute store result storage temp distance.x float 0.001 run scoreboard players get t_delta_x_blu temp
execute store result storage temp distance.z float 0.001 run scoreboard players get t_delta_z_blu temp
function rauch:game/mode/capture_the_flag/get_distance_macro with storage temp distance
execute store result score Global flagDistanceBlue run data get entity d65a87c9-da44-49ba-8c2d-72503c8f6f90 transformation.scale[0] 1000

kill d65a87c9-da44-49ba-8c2d-72503c8f6f90
scoreboard players reset t_delta_x_red temp
scoreboard players reset t_spawn_red_x temp
scoreboard players reset t_delta_z_red temp
scoreboard players reset t_spawn_red_z temp
scoreboard players reset t_delta_x_blue temp
scoreboard players reset t_spawn_blue_x temp
scoreboard players reset t_delta_z_blue temp
scoreboard players reset t_spawn_blue_z temp
##############################################

# save min distance
execute as @s[team=Blue] run scoreboard players operation Global flag_min_distance_red < Global flagDistanceRed
execute as @s[team=Red] run scoreboard players operation Global flag_min_distance_blue < Global flagDistanceBlue

# hack player
scoreboard players set @s hack 200

# update flag position
execute at @s as @e[type=marker,tag=flag_pos] run tp @s ~ ~ ~
