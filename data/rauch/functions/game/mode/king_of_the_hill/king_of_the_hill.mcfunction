function rauch:game/mechanics/respawn/respawn_main

execute at @e[type=armor_stand,tag=active,tag=map,tag=ce] positioned ~ ~-20 ~ run function rauch:game/mode/king_of_the_hill/point
execute store result bossbar center_control value run scoreboard players get Global control

execute if score Global control matches ..99 unless score Global capture_info matches 1 unless score Global capture_info matches 4..6 run function rauch:game/mode/king_of_the_hill/setred
execute if score Global control matches 100 unless score Global capture_info matches 2 unless score Global capture_info matches 4..6 run function rauch:game/mode/king_of_the_hill/setneutral
execute if score Global control matches 101.. unless score Global capture_info matches 3 unless score Global capture_info matches 4..6 run function rauch:game/mode/king_of_the_hill/setblu

scoreboard players operation Global red_calc = Global control
scoreboard players set Global blu_calc 200
scoreboard players operation Global blu_calc -= Global control

scoreboard players operation Global time_red -= Global red_calc
scoreboard players operation Global time_blue -= Global blu_calc

scoreboard players operation Global time_red > Global 0
scoreboard players operation Global time_blue > Global 0

scoreboard players operation Red: time_times = Global time_red
scoreboard players operation Blue: time_times = Global time_blue

scoreboard players operation Red: time_times /= Global 20
scoreboard players operation Blue: time_times /= Global 20
scoreboard players operation Red: time_times /= Global 20
scoreboard players operation Blue: time_times /= Global 20

execute if score Global time_blue matches 0 unless score Global time_red matches 0 unless score Global capture_info matches 4 run function rauch:game/mode/king_of_the_hill/setredovertime
execute if score Global time_red matches 0 unless score Global time_blue matches 0 unless score Global capture_info matches 5 run function rauch:game/mode/king_of_the_hill/setblueovertime
execute if score Global time_red matches 0 if score Global time_blue matches 0 if score Global control matches 100 unless score Global capture_info matches 6 run function rauch:game/mode/king_of_the_hill/setneutralovertime

execute unless score Global gameend matches 1.. if score Global time_blue matches 0 if score Global control matches ..99 run function rauch:game/framework/stats/win_red
execute unless score Global gameend matches 1.. if score Global time_red matches 0 if score Global control matches 101.. run function rauch:game/framework/stats/win_blue
