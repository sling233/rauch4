scoreboard players operation @s cool1 = @s cool1_target
execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","raucher_rocket","setup","red"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","raucher_rocket","setup","blu"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=raucher_rocket] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=raucher_rocket,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=raucher_rocket] remove setup
execute at @s run playsound minecraft:item.crossbow.shoot master @a

scoreboard players operation @s cool1 = @s cool1_target
