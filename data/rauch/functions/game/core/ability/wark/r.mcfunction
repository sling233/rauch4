execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","wark","setup","red"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","wark","setup","blu"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=wark] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=wark,limit=1] pnum = @s pnum
scoreboard players operation @e[type=marker,tag=setup,tag=wark,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=wark] remove setup
execute at @s run playsound minecraft:entity.warden.sonic_charge master @a
execute as @e[type=marker,tag=wark] at @s run function rauch:game/core/ability/wark/r/move
scoreboard players set @s wark_r -30
scoreboard players operation @s cool1 = @s cool1_target
