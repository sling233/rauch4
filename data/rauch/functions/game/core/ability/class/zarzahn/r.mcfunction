execute at @s run summon marker ~ ~ ~ {Tags:["projectile","zarzahn","setup"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=zarzahn] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=zarzahn,limit=1] pnum = @s pnum
execute as @s[team=Red] run tag @e[type=marker,tag=setup,tag=zarzahn] add red
execute as @s[team=Blue] run tag @e[type=marker,tag=setup,tag=zarzahn] add blu
tag @e[type=marker,tag=setup,tag=zarzahn] remove setup
execute at @s run playsound minecraft:item.crossbow.shoot master @a

scoreboard players operation @s cool1 = @s cool1_target
