scoreboard players add @s 2 1
execute as @s[scores={2=21..}] run function rauch:game/core/ability/teleporter/f/teleport
execute as @s[scores={2=..20}] positioned ~ ~-1 ~ if block ~ ~ ~ #nonsolid run function rauch:game/core/ability/teleporter/f/floor
execute as @s[scores={2=..20}] run function rauch:game/core/ability/teleporter/f/teleport
