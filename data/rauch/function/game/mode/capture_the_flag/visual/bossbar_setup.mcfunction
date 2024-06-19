bossbar set flag_location players @a[tag=game]
bossbar set flag_location visible true

scoreboard objectives add t_bossbar_max dummy
# calculate distance ####################
# get coords
scoreboard objectives add xPos2 dummy
scoreboard objectives add zPos2 dummy
# x
execute store result score Global xPos run data get storage map_data active.red[0] 1000
execute store result score Global xPos2 run data get storage map_data active.blue[0] 1000
scoreboard players operation Global xPos -= Global xPos2
# z
execute store result score Global zPos run data get storage map_data active.red[2] 1000
execute store result score Global zPos2 run data get storage map_data active.blue[2] 1000
scoreboard players operation Global zPos -= Global zPos2

execute at @p run summon item_display ~ ~ ~ {UUID:[I;0,0,0,0]}

# calculate distance
execute store result storage temp distance.x float 0.001 run scoreboard players get Global xPos
execute store result storage temp distance.z float 0.001 run scoreboard players get Global zPos
function rauch:game/mode/capture_the_flag/get_distance_macro with storage temp distance
execute store result score Global t_bossbar_max run data get entity 0-0-0-0-0 transformation.scale[0] 20

kill 0-0-0-0-0
scoreboard objectives remove xPos2
scoreboard objectives remove zPos2
###################################
execute store result bossbar flag_location max run scoreboard players get Global t_bossbar_max
scoreboard players operation Global spawn_to_center_distance = Global t_bossbar_max
scoreboard players operation Global spawn_to_center_distance /= Global 2
scoreboard objectives remove t_bossbar_max
