scoreboard players operation t_pnum global = @s pnum
execute at @s as @e[type=spider,tag=raucher_spider] if score @s pnum = t_pnum global run tag @s add t_teleport
scoreboard players reset t_pnum global

#execute at @s run tp @e[type=spider,tag=t_teleport] ~ ~1 ~
execute as @e[type=spider,tag=t_teleport] run data merge entity @s {NoGravity:0b}
execute as @e[type=spider,tag=t_teleport] run attribute @s minecraft:knockback_resistance base set 0
tag @e[type=spider,tag=t_teleport] remove t_teleport
