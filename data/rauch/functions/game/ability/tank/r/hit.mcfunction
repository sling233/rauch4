# executed at tank, as selected player
scoreboard objectives add heal_calc dummy
scoreboard players operation @s heal_calc = @p tank_damage_taken
scoreboard players operation @s heal_calc /= Global 10
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["heal","setup"],Radius:0,Duration:6,Age:4,effects:[{id:"minecraft:regeneration",amplifier:127b,duration:2,show_particles:0b}]}
execute store result entity @e[type=area_effect_cloud,tag=heal,tag=setup,limit=1] effects[0].duration int 1 run scoreboard players get @s heal_calc
tag @e[type=area_effect_cloud,tag=heal,tag=setup] remove setup

execute at @s run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 0.8
scoreboard objectives remove heal_calc
