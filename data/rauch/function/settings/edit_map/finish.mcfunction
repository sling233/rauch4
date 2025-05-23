data modify storage map_data edit_buffer.name set string entity @s Inventory[{Slot:0b}].components."minecraft:writable_book_content".pages[0].raw

execute store result score t_map_particle temp run data get storage map_data edit_buffer.particle
execute store result score t_map_time temp run data get storage map_data edit_buffer.time
execute store result score t_map_weather temp run data get storage map_data edit_buffer.weather
execute store result score t_map_launchpads temp run data get storage map_data edit_buffer.has_launchpads
execute store result score t_map_disable_block_interaction temp run data get storage map_data edit_buffer.disable_block_interaction
execute store result score t_map_is_dark temp run data get storage map_data edit_buffer.is_dark

execute as @s[tag=add_map] run tellraw @a [{"text":"-------------- Added Map ","color":"green"},{"nbt":"edit_buffer.name","storage":"map_data","color":"light_purple"},{"text":" --------------","color":"green"}]
execute as @s[tag=!add_map] run tellraw @a [{"text":"-------------- Edited Map ","color":"yellow"},{"nbt":"edit_buffer.name","storage":"map_data","color":"light_purple"},{"text":" --------------","color":"yellow"}]

execute if score t_map_particle temp matches -1..0 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"None","color":"light_purple"}]
execute if score t_map_particle temp matches 1 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Ash","color":"light_purple"}]
execute if score t_map_particle temp matches 2 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Crimson Spore","color":"light_purple"}]
execute if score t_map_particle temp matches 3 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Enchanted Hit","color":"light_purple"}]
execute if score t_map_particle temp matches 4 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Glow","color":"light_purple"}]
execute if score t_map_particle temp matches 5 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Nautilus","color":"light_purple"}]
execute if score t_map_particle temp matches 6 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Snowflake","color":"light_purple"}]
execute if score t_map_particle temp matches 7 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Small Flame","color":"light_purple"}]
execute if score t_map_particle temp matches 8 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Warped Spore","color":"light_purple"}]
execute if score t_map_particle temp matches 9 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"White Ash","color":"light_purple"}]
execute if score t_map_particle temp matches 10 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Witch","color":"light_purple"}]
execute if score t_map_particle temp matches 11 run tellraw @a [{"text":"Ambient Particle: ","color":"green"},{"text":"Spore Blossom","color":"light_purple"}]

execute if score t_map_time temp matches -1..0 run tellraw @a [{"text":"Map Time: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score t_map_time temp matches 1 run tellraw @a [{"text":"Map Time: ","color":"green"},{"text":"Day","color":"light_purple"}]
execute if score t_map_time temp matches 2 run tellraw @a [{"text":"Map Time: ","color":"green"},{"text":"Noon","color":"light_purple"}]
execute if score t_map_time temp matches 3 run tellraw @a [{"text":"Map Time: ","color":"green"},{"text":"Night","color":"light_purple"}]
execute if score t_map_time temp matches 4 run tellraw @a [{"text":"Map Time: ","color":"green"},{"text":"Midnight","color":"light_purple"}]

execute if score t_map_weather temp matches -1..0 run tellraw @a [{"text":"Map Weather: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score t_map_weather temp matches 1 run tellraw @a [{"text":"Map Weather: ","color":"green"},{"text":"Clear","color":"light_purple"}]
execute if score t_map_weather temp matches 2 run tellraw @a [{"text":"Map Weather: ","color":"green"},{"text":"Rain","color":"light_purple"}]
execute if score t_map_weather temp matches 3 run tellraw @a [{"text":"Map Weather: ","color":"green"},{"text":"Thunder","color":"light_purple"}]

execute if score t_map_launchpads temp matches -1..0 run tellraw @a [{"text":"Map has Launch Pads: ","color":"green"},{"text":"No","color":"light_purple"}]
execute if score t_map_launchpads temp matches 1 run tellraw @a [{"text":"Map has Launch Pads: ","color":"green"},{"text":"Yes","color":"light_purple"}]

execute if score t_map_disable_block_interaction temp matches -1..0 run tellraw @a [{"text":"Disable Block Interaction: ","color":"green"},{"text":"No","color":"light_purple"}]
execute if score t_map_disable_block_interaction temp matches 1 run tellraw @a [{"text":"Disable Block Interaction: ","color":"green"},{"text":"Yes","color":"light_purple"}]

execute if score t_map_is_dark temp matches -1..0 run tellraw @a [{"text":"Is Dark: ","color":"green"},{"text":"No","color":"light_purple"}]
execute if score t_map_is_dark temp matches 1 run tellraw @a [{"text":"Is Dark: ","color":"green"},{"text":"Yes","color":"light_purple"}]

execute as @s[tag=add_map] run tellraw @a {"text":"----------------------------------------------","color":"green"}
execute as @s[tag=!add_map] run tellraw @a {"text":"----------------------------------------------","color":"yellow"}

scoreboard players reset t_map_particle temp
scoreboard players reset t_map_time temp
scoreboard players reset t_map_weather temp
scoreboard players reset t_map_launchpads temp
scoreboard players reset t_map_disable_block_interaction temp
scoreboard players reset t_map_is_dark temp

# append map from edit buffer to map list
execute as @s[tag=add_map] run data modify storage map_data maps append from storage map_data edit_buffer
execute as @s[tag=!add_map] run function rauch:settings/edit_map/finish_macro with storage map_data edit_buffer

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1

function rauch:settings/edit_map/return_to_lobby

clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]