scoreboard players add @s 2 1
execute as @s[scores={2=36..}] run function rauch:game/ability/teleporter/f/move_end
execute as @s[scores={2=..35}] positioned ^ ^ ^0.4 if block ~ ~ ~ #nonsolid run function rauch:game/ability/teleporter/f/move
execute as @s[scores={2=..35}] run function rauch:game/ability/teleporter/f/move_end
