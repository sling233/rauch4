#say buff
scoreboard players remove @s raucherdmg 1
execute at @s run particle minecraft:flame ~ ~1 ~ 0.2 0.4 0.2 0.1 5
execute at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.2 5
execute as @s[scores={raucherdmg=..0}] run function rauch:game/ability/raucher/q/remove_buff
