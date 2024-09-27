bossbar set flag_location players @a[tag=game]
bossbar set flag_location visible true

# calculate distance ####################
# get coords
# x
execute store result score t_xPos1 temp run data get storage map_data active.red[0] 1000
execute store result score t_xPos2 temp run data get storage map_data active.blue[0] 1000
scoreboard players operation t_xPos1 temp -= t_xPos2 temp
# z
execute store result score t_zPos1 temp run data get storage map_data active.red[2] 1000
execute store result score t_zPos2 temp run data get storage map_data active.blue[2] 1000
scoreboard players operation t_zPos1 temp -= t_zPos2 temp

execute at @p run summon item_display ~ ~ ~ {UUID:[I;0,0,0,0]}

# calculate distance
execute store result storage temp distance.x float 0.001 run scoreboard players get t_xPos1 temp
execute store result storage temp distance.z float 0.001 run scoreboard players get t_zPos1 temp
function rauch:game/mode/capture_the_flag/get_distance_macro with storage temp distance
execute store result score t_bossbar_max temp run data get entity 0-0-0-0-0 transformation.scale[0] 20

kill 0-0-0-0-0
scoreboard players reset t_xPos1 temp
scoreboard players reset t_xPos2 temp
scoreboard players reset t_zPos1 temp
scoreboard players reset t_zPos2 temp
###################################
scoreboard players set 2 const 2
execute store result bossbar flag_location max run scoreboard players get t_bossbar_max temp
scoreboard players operation Global spawn_to_center_distance = t_bossbar_max temp
scoreboard players operation Global spawn_to_center_distance /= 2 const


scoreboard players reset t_bossbar_max temp
