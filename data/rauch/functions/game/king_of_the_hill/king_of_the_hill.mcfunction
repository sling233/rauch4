function rauch:game/add/respawn/respawn_main
execute at @e[type=armor_stand,tag=active,tag=map,tag=ce] positioned ~ ~-20 ~ run function rauch:game/king_of_the_hill/point

execute if score Global center_red matches 100.. run scoreboard players remove Global time_red 1
execute if score Global center_blue matches 100.. run scoreboard players remove Global time_blue 1

scoreboard players operation Red: time_times = Global time_red
scoreboard players operation Blue: time_times = Global time_blue

scoreboard players operation Red: time_times /= Global 20
scoreboard players operation Blue: time_times /= Global 20

#bisschen dumm, ich fixe es später
execute store result bossbar minecraft:red_capturing value run scoreboard players get Global center_red
execute store result bossbar minecraft:red_contested value run scoreboard players get Global center_red
execute store result bossbar minecraft:red_captured value run scoreboard players get Global center_red
execute store result bossbar minecraft:blue_capturing value run scoreboard players get Global center_blue
execute store result bossbar minecraft:blue_contested value run scoreboard players get Global center_blue
execute store result bossbar minecraft:blue_captured value run scoreboard players get Global center_blue

bossbar set minecraft:red_capturing visible false
bossbar set minecraft:blue_capturing visible false
bossbar set minecraft:red_captured visible false
bossbar set minecraft:blue_captured visible false
bossbar set minecraft:red_contested visible false
bossbar set minecraft:blue_contested visible false

execute if score Global mode matches 1 if score Global capture_info matches 1 run bossbar set minecraft:red_capturing visible true
execute if score Global mode matches 1 if score Global capture_info matches 2 run bossbar set minecraft:blue_capturing visible true
execute if score Global mode matches 1 if score Global capture_info matches 3 run bossbar set minecraft:red_captured visible true
execute if score Global mode matches 1 if score Global capture_info matches 4 run bossbar set minecraft:blue_captured visible true
execute if score Global mode matches 1 if score Global capture_info matches 5 run bossbar set minecraft:red_contested visible true
execute if score Global mode matches 1 if score Global capture_info matches 6 run bossbar set minecraft:blue_contested visible true

execute if score Global time_red matches ..0 run function rauch:game/add/stats/win_red
execute if score Global time_blue matches ..0 run function rauch:game/add/stats/win_blue
