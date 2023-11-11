effect clear @s minecraft:levitation
effect give @s minecraft:levitation 1 220 true
#effect give @s minecraft:jump_boost 1 6 false
scoreboard players set @s wok_hover_schedule 0
execute at @s run playsound minecraft:item.shovel.flatten master @a
