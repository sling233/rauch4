# executed at tank, as selected player
scoreboard players set 10 const 10
scoreboard players operation t_heal_calc temp = @p tank_damage_taken
scoreboard players operation t_heal_calc temp /= 10 const
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["heal","setup"],Radius:0,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:2,show_particles:0}]}}
execute store result entity @e[type=area_effect_cloud,tag=heal,tag=setup,limit=1] potion_contents.custom_effects[0].duration int 1 run scoreboard players get t_heal_calc temp
#tellraw @a {"nbt":"potion_contents","entity":"@e[type=area_effect_cloud,tag=heal,tag=setup,limit=1]"}
tag @e[type=area_effect_cloud,tag=heal,tag=setup] remove setup

execute at @s run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 0.8
scoreboard players reset t_heal_calc temp
