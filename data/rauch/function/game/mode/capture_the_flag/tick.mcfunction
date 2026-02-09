execute if score Global gamestart matches 1.. run return 0

# sets flagDistanceBlue and flagDistanceRed 
execute as @a[tag=flagPickedUp] run function rauch:game/mode/capture_the_flag/flag_picked_up

execute as @e[type=minecraft:armor_stand,tag=flag,limit=1] run function rauch:game/mode/capture_the_flag/flag

# flag at enemy base
execute if score Global flagDistanceRed matches ..900 as @a[tag=flagPickedUp,team=Blue] run function rauch:game/mode/capture_the_flag/blue_score
execute if score Global flagDistanceBlue matches ..900 as @a[tag=flagPickedUp,team=Red] run function rauch:game/mode/capture_the_flag/red_score

# flag too far in own base (drop flag)
scoreboard objectives add dis_diff dummy
scoreboard players operation Global dis_diff = Global flagDistanceBlue
scoreboard players operation Global dis_diff -= Global flagDistanceRed

execute if entity @a[tag=flagPickedUp,team=Red] if score Global dis_diff matches 14000.. run function rauch:game/mode/capture_the_flag/flag_reset
execute if entity @a[tag=flagPickedUp,team=Blue] if score Global dis_diff matches ..-14000 run function rauch:game/mode/capture_the_flag/flag_reset

# draw lines and handle bossbar
execute as @e[type=minecraft:marker,tag=ce] run function rauch:game/mode/capture_the_flag/visual/draw_max_lines
function rauch:game/mode/capture_the_flag/visual/bossbar
function rauch:game/mode/capture_the_flag/visual/update_bossbar_title
#^ i don't have to run this every tick, but it's not that expensive ^

scoreboard objectives remove dis_diff


########## count down ##########
execute if score Global ctf_time matches 1.. run scoreboard players remove Global ctf_time 1
execute if score Global ctf_time matches 20..200 run function rauch:game/mode/capture_the_flag/visual/countdown

# overtime?
execute if score Global ctf_overtime matches 1..2 run function rauch:game/mode/capture_the_flag/overtime

########## game end ##########
execute if score Global gameend matches 1.. run return 1
# knockout
execute if score Global flag_points_red >= Global ctf_points_to_win run function rauch:game/framework/stats/win_red
execute if score Global flag_points_blue >= Global ctf_points_to_win run function rauch:game/framework/stats/win_blue
execute if score Global ctf_time matches 1.. run return 1

# initialize potential overtime
execute unless score Global ctf_overtime matches 1.. if score Global ctf_time matches 0 if entity @a[tag=flagPickedUp] run function rauch:game/mode/capture_the_flag/initialize_overtime
# if overtime (1 or 2), don't end game here
execute if score Global ctf_overtime matches 1..2 run return 1

# end game
execute if score Global ctf_time matches ..0 if score Global flag_points_red > Global flag_points_blue run function rauch:game/framework/stats/win_red
execute if score Global ctf_time matches ..0 if score Global flag_points_red < Global flag_points_blue run function rauch:game/framework/stats/win_blue
execute if score Global ctf_time matches ..0 if score Global flag_points_red = Global flag_points_blue if score Global flag_min_distance_red > Global flag_min_distance_blue run function rauch:game/framework/stats/win_red
execute if score Global ctf_time matches ..0 if score Global flag_points_red = Global flag_points_blue if score Global flag_min_distance_red < Global flag_min_distance_blue run function rauch:game/framework/stats/win_blue
execute if score Global ctf_time matches ..0 if score Global flag_points_red = Global flag_points_blue if score Global flag_min_distance_red = Global flag_min_distance_blue run function rauch:game/framework/stats/tie
