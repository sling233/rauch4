# executed at tank, as selected player
scoreboard objectives add heal_calc dummy
scoreboard players operation @s heal_calc = @p tank_damage_taken
scoreboard players operation @s heal_calc /= Global 10
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["heal","setup"],Radius:0,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:2,show_particles:0}]}}
execute store result entity @e[type=area_effect_cloud,tag=heal,tag=setup,limit=1] potion_contents.custom_effects[0].duration int 1 run scoreboard players get @s heal_calc
#tellraw @a {"nbt":"potion_contents","entity":"@e[type=area_effect_cloud,tag=heal,tag=setup,limit=1]"}
tag @e[type=area_effect_cloud,tag=heal,tag=setup] remove setup

execute at @s run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 0.8
scoreboard objectives remove heal_calc
