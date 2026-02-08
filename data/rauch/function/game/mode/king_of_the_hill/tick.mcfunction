execute if score Global gamestart matches 1.. run return 0

execute as @e[type=marker,tag=map,tag=ce] at @s positioned ~ ~-20 ~ run function rauch:game/mode/king_of_the_hill/point
# capture_info: 1   2    3    4    5
#              red      neu       blu
# capture info2: 6: red overtime, 7: neutral overtime, 8: blue overtime

# control: 0: red, 200: blue
execute if score Global control matches 0 unless score Global capture_info matches 1 unless score Global capture_info matches 6..8 run function rauch:game/mode/king_of_the_hill/set_red_control
execute if score Global control matches 1..99 unless score Global capture_info matches 2 unless score Global capture_info matches 6..8 run function rauch:game/mode/king_of_the_hill/set_red_advantage
execute if score Global control matches 100 unless score Global capture_info matches 3 unless score Global capture_info matches 6..8 run function rauch:game/mode/king_of_the_hill/set_neutral
execute if score Global control matches 101..199 unless score Global capture_info matches 4 unless score Global capture_info matches 6..8 run function rauch:game/mode/king_of_the_hill/set_blu_advantage
execute if score Global control matches 200 unless score Global capture_info matches 5 unless score Global capture_info matches 6..8 run function rauch:game/mode/king_of_the_hill/set_blu_control

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
execute if score Global time_red matches 0 unless score Global time_blue matches 0 unless score Global control matches 200 unless score Global capture_info matches 6 run function rauch:game/mode/king_of_the_hill/set_red_overtime
execute if score Global time_blue matches 0 unless score Global time_red matches 0 unless score Global control matches 0 unless score Global capture_info matches 8 run function rauch:game/mode/king_of_the_hill/set_blue_overtime
execute if score Global time_red matches 0 if score Global time_blue matches 0 unless score Global capture_info matches 7 run function rauch:game/mode/king_of_the_hill/set_neutral_overtime

execute if score Global gameend matches 1.. run return 1
execute if score Global time_blue matches 0 if score Global control matches 0 run function rauch:game/framework/stats/win_red
execute if score Global time_red matches 0 if score Global control matches 200 run function rauch:game/framework/stats/win_blue

scoreboard players reset t_red_calc temp
scoreboard players reset t_blu_calc temp
