execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","wok_hook","setup","red"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","wok_hook","setup","blu"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=wok_hook] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=wok_hook,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=wok_hook] remove setup
execute at @s run playsound minecraft:entity.bat.takeoff master @a

scoreboard players operation @s cool1 = @s cool1_target