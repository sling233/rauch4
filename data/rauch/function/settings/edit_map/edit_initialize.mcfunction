tag @s add edit_map
tag @s remove lobby
clear @s
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1

$data modify storage map_data edit_buffer set from storage map_data maps[$(map_id)]
$data modify storage map_data edit_buffer merge value {"edit_id":$(map_id)}

execute store result score Global mapParticle run data get storage map_data edit_buffer.particle
execute store result score Global enable_launchpads run data get storage map_data edit_buffer.has_launchpads

execute store result score t_map_time temp run data get storage map_data edit_buffer.time
execute if score t_map_time temp matches 1 run time set day
execute if score t_map_time temp matches 2 run time set noon
execute if score t_map_time temp matches 3 run time set night
execute if score t_map_time temp matches 4 run time set midnight
scoreboard players reset t_map_time temp

execute store result score t_map_weather temp run data get storage map_data edit_buffer.weather
execute if score t_map_weather temp matches 1 run weather clear
execute if score t_map_weather temp matches 2 run weather rain
execute if score t_map_weather temp matches 3 run weather thunder
scoreboard players reset t_map_weather temp

# try to give map namer with the name of the map already in it. "try" because when there are quotation marks in the name
# the command messes up, and the player gets nothing
function rauch:settings/edit_map/give_map_namer_with_name with storage map_data edit_buffer

tellraw @s [{"text":"----------- Editing ","color":"yellow"},{"nbt":"edit_buffer.name","storage":"map_data"},{"text":" -----------","color":"yellow"}]
