execute at @s[team=Red] run summon marker ~ ~0.1 ~ {Tags:["red","shield","setup"]}
execute at @s[team=Blue] run summon marker ~ ~0.1 ~ {Tags:["blu","shield","setup"]}
scoreboard players operation @e[type=marker,tag=shield,tag=setup] pnum = @s pnum
tag @e[type=marker,tag=shield,tag=setup] remove setup

execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a

scoreboard players operation @s cool1 = @s cool1_target
