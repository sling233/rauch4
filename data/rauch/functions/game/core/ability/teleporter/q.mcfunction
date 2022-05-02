scoreboard players set @s tele2 120
scoreboard players reset @s damage_dealt
clear @s minecraft:leather_boots
clear @s minecraft:leather_chestplate
clear @s minecraft:leather_leggings
effect give @s invisibility 6 1 true
execute at @s run particle minecraft:smoke ~ ~0.6 ~ 0.8 0.7 0.8 0.02 1000 force
function rauch:game/core/mechanics/weapon

scoreboard players operation @s cool2 = @s cool2_target
