effect give @s minecraft:instant_damage 1 2 true
tag @s add bolt_r_hit
scoreboard players operation @s 0 = @e[type=marker,tag=temp,sort=nearest,limit=1] pnum
execute at @s as @a if score @s pnum = @p 0 as @s[scores={bolt=1..}] run function rauch:game/core/ability/bolt/q/hit
tag @s remove bolt_r_hit
