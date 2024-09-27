scoreboard players add t_step temp 1
execute if score t_step temp matches 21.. run function rauch:game/ability/teleporter/f/teleport
execute if score t_step temp matches ..20 positioned ~ ~-1 ~ if block ~ ~ ~ #nonsolid run function rauch:game/ability/teleporter/f/floor
execute if score t_step temp matches ..20 run function rauch:game/ability/teleporter/f/teleport
