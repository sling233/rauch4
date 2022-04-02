execute at @s[team=Red] positioned ^ ^ ^1 run summon arrow ~ ~1.6 ~ {Team:Red,Owner:[I;0,0,0,0],life:1140,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:2d,crit:0b,Tags:["setup","bow"]}
execute at @s[team=Blue] positioned ^ ^ ^1 run summon arrow ~ ~1.6 ~ {Team:Blue,Owner:[I;0,0,0,0],life:1140,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:2d,crit:0b,Tags:["setup","bow"]}
data modify entity @e[type=arrow,tag=bow,tag=setup,limit=1] Owner set from entity @s UUID
execute at @s run summon minecraft:area_effect_cloud ~ ~1.6 ~ {Tags:["vector"]}

execute at @s as @e[type=arrow,tag=bow,tag=setup] run function rauch:game/core/ability/class/bowmaster/r/launch

tag @e[type=arrow,tag=bow,tag=setup,limit=1] remove setup
kill @e[type=area_effect_cloud,tag=vector,limit=1]

execute at @s run playsound minecraft:item.crossbow.shoot master @a
execute if score @s projectileRNum = @s projectileRMax run scoreboard players operation @s cool1 = @s cool1_target
scoreboard players remove @s projectileRNum 1
