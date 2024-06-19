execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","bolt_blast","setup","red","remove_on_death"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","bolt_blast","setup","blu","remove_on_death"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=bolt_blast] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=bolt_blast,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=bolt_blast] remove setup

execute at @s run playsound minecraft:entity.evoker.cast_spell master @a
scoreboard players operation @s cool1 = @s cool1_target
