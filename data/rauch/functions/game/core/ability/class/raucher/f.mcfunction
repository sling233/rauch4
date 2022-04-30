execute at @s run summon marker ~ ~ ~ {Tags:["projectile","raucher_rocket","setup"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=raucher_rocket] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=raucher_rocket,limit=1] pnum = @s pnum
execute as @s[team=Red] run tag @e[type=marker,tag=setup,tag=raucher_rocket] add red
execute as @s[team=Blue] run tag @e[type=marker,tag=setup,tag=raucher_rocket] add blu
tag @e[type=marker,tag=setup,tag=raucher_rocket] remove setup
scoreboard players operation @s cool1 = @s cool1_target
