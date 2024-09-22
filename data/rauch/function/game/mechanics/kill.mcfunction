execute if score Global game_running matches 1.. if score Global mode matches 5 run function rauch:game/mode/wokkaman/kill
execute as @s[tag=game,scores={kit=9}] run scoreboard players set t_add_rocket_count temp 4
execute as @s[tag=game,scores={kit=9}] run function rauch:game/ability/wokkaman/q/add_n_rockets
advancement revoke @s only rauch:kill
