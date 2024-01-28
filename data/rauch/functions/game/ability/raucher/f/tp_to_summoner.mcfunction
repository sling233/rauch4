scoreboard objectives add t_pnum dummy
scoreboard players operation Global t_pnum = @s pnum
execute at @s as @e[type=spider,tag=raucher_spider] if score @s pnum = Global t_pnum run tag @s add t_teleport
scoreboard objectives remove t_pnum

#execute at @s run tp @e[type=spider,tag=t_teleport] ~ ~1 ~
execute as @e[type=spider,tag=t_teleport] run data merge entity @s {NoGravity:0b}
execute as @e[type=spider,tag=t_teleport] run attribute @s minecraft:generic.knockback_resistance base set 0
tag @e[type=spider,tag=t_teleport] remove t_teleport
