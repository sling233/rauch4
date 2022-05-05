effect give @s minecraft:instant_damage 1 2 true
scoreboard players operation @s 0 = @e[type=marker,tag=temp,limit=1] pnum
execute as @s at @a[scores={bolt=1..}] if score @p pnum = @s 0 run function rauch:game/core/ability/bolt/q/hit
