scoreboard players operation t_pnum global = @s pnum
execute at @s as @e[type=spider,tag=raucher_spider] if score @s pnum = t_pnum global run tag @s add t_activate
scoreboard players reset t_pnum global

#execute at @s run tp @e[type=spider,tag=t_teleport] ~ ~1 ~
execute as @e[type=spider,tag=t_activate] run data modify entity @s last_hurt_by_mob set from entity @s data.target
execute as @e[type=spider,tag=t_activate] run damage @s 0
#execute as @e[type=spider,tag=t_activate] run attribute @s minecraft:knockback_resistance base set 0

tag @e[type=spider,tag=t_activate] remove t_activate
