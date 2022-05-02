scoreboard players reset @s 2
execute at @s run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.3 0.5 0.3 1 100 force
execute at @s positioned ~ ~1.6 ~ run function rauch:game/core/ability/teleporter/f/move
scoreboard players operation @s cool3 = @s cool3_target
