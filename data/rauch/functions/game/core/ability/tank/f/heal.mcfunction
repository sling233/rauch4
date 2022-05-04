execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["heal","setup"],Radius:0,Duration:6,Age:4,Effects:[{Id:10b,Amplifier:127b,Duration:2,ShowParticles:0b}]}
execute store result entity @e[type=area_effect_cloud,tag=heal,tag=setup,limit=1] Effects[0].Duration int 1 run scoreboard players get @s heal
scoreboard players reset @s heal
