execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["heal","setup"],Radius:0,Duration:6,Age:4,effects:[{id:10,amplifier:127b,duration:2,show_particles:0b}]}
execute store result entity @e[type=area_effect_cloud,tag=heal,tag=setup,limit=1] effects[0].duration int 1 run scoreboard players get @s heal
scoreboard players reset @s heal
