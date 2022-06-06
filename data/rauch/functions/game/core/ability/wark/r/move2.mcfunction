scoreboard players add @s 2 1
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={2=..67}] positioned ^ ^ ^1.2 run function rauch:game/core/ability/wark/r/move2
