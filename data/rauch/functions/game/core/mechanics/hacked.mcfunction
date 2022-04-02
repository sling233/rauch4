scoreboard players remove @s hack 1
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.03 5
execute as @s[scores={hack=..0}] run function rauch:game/core/mechanics/hackend
