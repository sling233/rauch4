execute as @s[tag=!dash] at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["dash"]}
execute as @s[tag=!dash] at @s run tp @e[type=minecraft:area_effect_cloud,tag=dash,limit=1,sort=nearest] @s
execute as @s[tag=!dash] at @s run tp @e[type=minecraft:area_effect_cloud,tag=dash,limit=1,sort=nearest] ~ ~1.6 ~
execute as @s[tag=!dash] at @s run scoreboard players operation @e[type=area_effect_cloud,tag=dash,limit=1,sort=nearest] pnum = @s pnum
execute as @s[tag=!dash] run tag @s add dash

tag @s[tag=zarzahn_hook] remove zarzahn_hook

execute as @e[type=area_effect_cloud,tag=dash] run function rauch:game/core/ability/dash/aec

execute at @s run particle minecraft:instant_effect ~ ~1 ~ 0.2 0.4 0.2 1 30 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~1 ~ 0.5
execute at @s run particle minecraft:firework ~ ~1.4 ~ 0 0.1 0 0.2 30 force

tag @s remove dash
tag @s remove timeout
tag @s remove down
scoreboard players operation @s cool3 = @s cool3_target
