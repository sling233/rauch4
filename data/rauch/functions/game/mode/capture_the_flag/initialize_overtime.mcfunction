# 3 ends overtime, it might get changed in this function
scoreboard players set Global ctf_overtime 3

scoreboard objectives add winning_team dummy
#execute if score Global flag_points_red > Global flag_points_blue run scoreboard players set Global winning_team 1
#execute if score Global flag_points_red < Global flag_points_blue run scoreboard players set Global winning_team 2
execute if score Global flag_points_red = Global flag_points_blue if score Global flag_min_distance_red > Global flag_min_distance_blue run scoreboard players set Global winning_team 1
execute if score Global flag_points_red = Global flag_points_blue if score Global flag_min_distance_red < Global flag_min_distance_blue run scoreboard players set Global winning_team 2
# if they tie, i give up
# set overtime
execute if score Global winning_team matches 1 if entity @a[tag=flagPickedUp,team=Blue] run scoreboard players set Global ctf_overtime 2
execute if score Global winning_team matches 2 if entity @a[tag=flagPickedUp,team=Red] run scoreboard players set Global ctf_overtime 1
execute if score Global ctf_overtime matches 1 run title @a[tag=game] title {"text":"Overtime","color":"red"}
execute if score Global ctf_overtime matches 2 run title @a[tag=game] title {"text":"Overtime","color":"blue"}
execute if score Global ctf_overtime matches 1..2 run title @a[tag=game] subtitle ""
scoreboard objectives remove winning_team
