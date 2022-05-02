execute at @s run summon marker ~ ~ ~ {Tags:["projectile","bolt_blast","setup"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=bolt_blast] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=bolt_blast,limit=1] pnum = @s pnum
execute as @s[team=Red] run tag @e[type=marker,tag=setup,tag=bolt_blast] add red
execute as @s[team=Blue] run tag @e[type=marker,tag=setup,tag=bolt_blast] add blu
tag @e[type=marker,tag=setup,tag=bolt_blast] remove setup
scoreboard players operation @s cool1 = @s cool1_target
