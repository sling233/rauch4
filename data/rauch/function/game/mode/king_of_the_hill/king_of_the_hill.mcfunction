execute if score Global gamestart matches 1.. run return 0
function rauch:game/mechanics/respawn/respawn_main

execute as @e[type=marker,tag=map,tag=ce] at @s positioned ~ ~-20 ~ run function rauch:game/mode/king_of_the_hill/point
# control: 0: red, 200: blue
execute if score Global control matches ..99 unless score Global capture_info matches 1 unless score Global capture_info matches 4..6 run function rauch:game/mode/king_of_the_hill/setred
execute if score Global control matches 100 unless score Global capture_info matches 2 unless score Global capture_info matches 4..6 run function rauch:game/mode/king_of_the_hill/setneutral
execute if score Global control matches 101.. unless score Global capture_info matches 3 unless score Global capture_info matches 4..6 run function rauch:game/mode/king_of_the_hill/setblu

scoreboard players operation t_red_calc temp = Global control
scoreboard players set t_blu_calc temp 200
scoreboard players operation t_blu_calc temp -= Global control

scoreboard players operation Global time_red -= t_red_calc temp
scoreboard players operation Global time_blue -= t_blu_calc temp
scoreboard players set 0 const 0
scoreboard players operation Global time_red > 0 const
scoreboard players operation Global time_blue > 0 const

function rauch:game/mode/king_of_the_hill/update_bossbar

# time: 0 = lose
execute if score Global time_red matches 0 unless score Global time_blue matches 0 if score Global control matches ..99 unless score Global capture_info matches 4 run function rauch:game/mode/king_of_the_hill/setredovertime
execute if score Global time_blue matches 0 unless score Global time_red matches 0 if score Global control matches 101.. unless score Global capture_info matches 5 run function rauch:game/mode/king_of_the_hill/setblueovertime
execute if score Global time_red matches 0 if score Global time_blue matches 0 if score Global control matches 100 unless score Global capture_info matches 6 run function rauch:game/mode/king_of_the_hill/setneutralovertime

execute if score Global gameend matches 1.. run return 1
execute if score Global time_blue matches 0 if score Global control matches ..99 run function rauch:game/framework/stats/win_red
execute if score Global time_red matches 0 if score Global control matches 101.. run function rauch:game/framework/stats/win_blue

scoreboard players reset t_red_calc temp
scoreboard players reset t_blu_calc temp
