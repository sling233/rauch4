effect clear @s minecraft:levitation
#effect give @s minecraft:levitation 1 220 true
attribute @s minecraft:gravity base set 1
#effect give @s minecraft:jump_boost 1 6 false
execute at @s run particle minecraft:poof ~ ~ ~ 0.3 0.05 0.3 0.1 200 force
scoreboard players set @s wok_hover_schedule 0
execute at @s run playsound minecraft:item.shovel.flatten master @a
