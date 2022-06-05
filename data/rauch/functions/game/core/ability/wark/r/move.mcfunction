scoreboard players add @s 2 1
particle minecraft:sculk_charge 0 ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={2=..40}] positioned ^ ^ ^0.4 run function rauch:game/core/ability/wark/r/move
