execute unless score @s cool1 matches 0 run return 1

execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","zarzahn","setup","red","remove_on_death"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","zarzahn","setup","blu","remove_on_death"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=zarzahn] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=zarzahn,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=zarzahn] remove setup
execute at @s run playsound minecraft:item.crossbow.shoot master @a

scoreboard players operation @s cool1 = @s cool1_target
