data modify storage map_data maps[0].name set from entity @s Inventory[{Slot:0b}].components."minecraft:written_book_content".pages[0]

scoreboard objectives add t_map_particle dummy
scoreboard objectives add t_map_time dummy
execute store result score Global t_map_particle run data get storage map_data maps[0].particle
execute store result score Global t_map_time run data get storage map_data maps[0].time

execute unless score Global t_map_particle matches 1.. run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"None","color":"light_purple"}]
execute if score Global t_map_particle matches 1 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Ash","color":"light_purple"}]
execute if score Global t_map_particle matches 2 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Crimson Spore","color":"light_purple"}]
execute if score Global t_map_particle matches 3 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Enchanted Hit","color":"light_purple"}]
execute if score Global t_map_particle matches 4 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Glow","color":"light_purple"}]
execute if score Global t_map_particle matches 5 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Nautilus","color":"light_purple"}]
execute if score Global t_map_particle matches 6 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Snowflake","color":"light_purple"}]
execute if score Global t_map_particle matches 7 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Small Flame","color":"light_purple"}]
execute if score Global t_map_particle matches 8 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Warped Spore","color":"light_purple"}]
execute if score Global t_map_particle matches 9 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"White Ash","color":"light_purple"}]
execute if score Global t_map_particle matches 10 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Witch","color":"light_purple"}]
execute if score Global t_map_particle matches 11 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Spre Blossom","color":"light_purple"}]

execute unless score Global t_map_time matches 1.. run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score Global t_map_time matches 1 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Day","color":"light_purple"}]
execute if score Global t_map_time matches 2 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Noon","color":"light_purple"}]
execute if score Global t_map_time matches 3 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Night","color":"light_purple"}]
execute if score Global t_map_time matches 4 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Midnight","color":"light_purple"}]

tellraw @s [{"text":"Added Map ","color":"green"},{"nbt":"maps[0].name","storage":"map_data","interpret":true,"color":"light_purple"}]

tellraw @s {"text":"------------- Added Map -------------","color":"yellow"}
data modify storage map_data maps append from storage map_data maps[0]
data remove storage map_data maps[0]

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
scoreboard objectives remove t_map_particle
scoreboard objectives remove t_map_time
tag @s remove addmap
clear @s
scoreboard players reset @s click
tag @s add lobby
