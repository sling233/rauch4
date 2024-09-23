data modify storage map_data maps[0].name set string entity @s Inventory[{Slot:0b}].components."minecraft:writable_book_content".pages[0].raw

execute store result score t_map_particle temp run data get storage map_data maps[0].particle
execute store result score t_map_time temp run data get storage map_data maps[0].time

execute unless score t_map_particle temp matches 1.. run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"None","color":"light_purple"}]
execute if score t_map_particle temp matches 1 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Ash","color":"light_purple"}]
execute if score t_map_particle temp matches 2 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Crimson Spore","color":"light_purple"}]
execute if score t_map_particle temp matches 3 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Enchanted Hit","color":"light_purple"}]
execute if score t_map_particle temp matches 4 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Glow","color":"light_purple"}]
execute if score t_map_particle temp matches 5 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Nautilus","color":"light_purple"}]
execute if score t_map_particle temp matches 6 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Snowflake","color":"light_purple"}]
execute if score t_map_particle temp matches 7 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Small Flame","color":"light_purple"}]
execute if score t_map_particle temp matches 8 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Warped Spore","color":"light_purple"}]
execute if score t_map_particle temp matches 9 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"White Ash","color":"light_purple"}]
execute if score t_map_particle temp matches 10 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Witch","color":"light_purple"}]
execute if score t_map_particle temp matches 11 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Spre Blossom","color":"light_purple"}]

execute unless score t_map_time temp matches 1.. run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score t_map_time temp matches 1 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Day","color":"light_purple"}]
execute if score t_map_time temp matches 2 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Noon","color":"light_purple"}]
execute if score t_map_time temp matches 3 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Night","color":"light_purple"}]
execute if score t_map_time temp matches 4 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Midnight","color":"light_purple"}]

tellraw @s [{"text":"Added Map ","color":"green"},{"nbt":"maps[0].name","storage":"map_data","interpret":true,"color":"light_purple"}]

tellraw @s {"text":"------------- Added Map -------------","color":"yellow"}
data modify storage map_data maps append from storage map_data maps[0]
data remove storage map_data maps[0]

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
scoreboard players reset t_map_particle temp
scoreboard players reset t_map_time temp
tag @s remove addmap
clear @s
scoreboard players reset @s click
scoreboard players reset Global mapParticle
tag @s add lobby
