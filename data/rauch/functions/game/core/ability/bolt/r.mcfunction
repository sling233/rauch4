execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","bolt_blast","setup","red"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","bolt_blast","setup","blu"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=bolt_blast] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=bolt_blast,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=bolt_blast] remove setup

scoreboard players operation @s cool1 = @s cool1_target
