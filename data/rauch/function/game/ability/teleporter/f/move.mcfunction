scoreboard players add t_step temp 1
execute if score t_step temp matches 36.. run function rauch:game/ability/teleporter/f/move_end
execute if score t_step temp matches ..35 positioned ^ ^ ^0.4 if block ~ ~ ~ #nonsolid run function rauch:game/ability/teleporter/f/move
execute if score t_step temp matches ..35 run function rauch:game/ability/teleporter/f/move_end
