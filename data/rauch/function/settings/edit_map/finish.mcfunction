data modify storage map_data edit_buffer.name set string entity @s Inventory[{Slot:0b}].components."minecraft:writable_book_content".pages[0].raw

execute store result score t_map_particle temp run data get storage map_data edit_buffer.particle
execute store result score t_map_time temp run data get storage map_data edit_buffer.time
execute store result score t_map_weather temp run data get storage map_data edit_buffer.weather
execute store result score t_map_launchpads temp run data get storage map_data edit_buffer.has_launchpads
execute store result score t_map_disable_block_interaction temp run data get storage map_data edit_buffer.disable_block_interaction

execute if score t_map_particle temp matches -1..0 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"None","color":"light_purple"}]
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
execute if score t_map_particle temp matches 11 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Spore Blossom","color":"light_purple"}]

execute if score t_map_time temp matches -1..0 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score t_map_time temp matches 1 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Day","color":"light_purple"}]
execute if score t_map_time temp matches 2 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Noon","color":"light_purple"}]
execute if score t_map_time temp matches 3 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Night","color":"light_purple"}]
execute if score t_map_time temp matches 4 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Midnight","color":"light_purple"}]

execute if score t_map_weather temp matches -1..0 run tellraw @s [{"text":"Map Weather: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score t_map_weather temp matches 1 run tellraw @s [{"text":"Map Weather: ","color":"green"},{"text":"Clear","color":"light_purple"}]
execute if score t_map_weather temp matches 2 run tellraw @s [{"text":"Map Weather: ","color":"green"},{"text":"Rain","color":"light_purple"}]
execute if score t_map_weather temp matches 3 run tellraw @s [{"text":"Map Weather: ","color":"green"},{"text":"Thunder","color":"light_purple"}]

execute if score t_map_launchpads temp matches -1..0 run tellraw @s [{"text":"Map has Launch Pads: ","color":"green"},{"text":"No","color":"light_purple"}]
execute if score t_map_launchpads temp matches 1 run tellraw @s [{"text":"Map has Launch Pads: ","color":"green"},{"text":"Yes","color":"light_purple"}]

execute if score t_map_disable_block_interaction temp matches -1..0 run tellraw @s [{"text":"Disable Block Interaction: ","color":"green"},{"text":"No","color":"light_purple"}]
execute if score t_map_disable_block_interaction temp matches 1 run tellraw @s [{"text":"Disable Block Interaction: ","color":"green"},{"text":"Yes","color":"light_purple"}]

scoreboard players reset t_map_particle temp
scoreboard players reset t_map_time temp
scoreboard players reset t_map_weather temp
scoreboard players reset t_map_launchpads temp
scoreboard players reset t_map_disable_block_interaction temp

tellraw @s[tag=add_map] [{"text":"Added Map ","color":"green"},{"nbt":"edit_buffer.name","storage":"map_data","interpret":true,"color":"light_purple"}]
tellraw @s[tag=add_map] {"text":"------------- Added Map -------------","color":"yellow"}
tellraw @s[tag=!add_map] {"text":"------------- Edited Map -------------","color":"yellow"}

# append map from edit buffer to map list
execute as @s[tag=add_map] run data modify storage map_data maps append from storage map_data edit_buffer
execute as @s[tag=!add_map] run function rauch:settings/edit_map/finish_macro with storage map_data edit_buffer

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tag @s remove add_map
tag @s remove edit_map
clear @s
scoreboard players reset @s click
scoreboard players reset Global mapParticle
weather clear
time set day
tag @s add lobby
