execute if score Global ctf_overtime matches 1 unless entity @a[tag=flagPickedUp,team=Red] run scoreboard players set Global ctf_overtime 3
execute if score Global ctf_overtime matches 2 unless entity @a[tag=flagPickedUp,team=Blue] run scoreboard players set Global ctf_overtime 4
execute if score Global ctf_overtime matches 3 run function rauch:game/framework/stats/win_blue
execute if score Global ctf_overtime matches 4 run function rauch:game/framework/stats/win_red
