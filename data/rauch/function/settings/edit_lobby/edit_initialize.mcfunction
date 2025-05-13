tag @s add edit_lobby
tag @s remove lobby
clear @s
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1

data modify storage lobby_data edit_buffer set from storage lobby_data
execute if data storage lobby_data edit_buffer.version run tag @s add editing_official_lobby


execute store result score Global enable_launchpads run data get storage lobby_data edit_buffer.has_launchpads

execute store result score t_lobby_time temp run data get storage lobby_data edit_buffer.time
execute if score t_lobby_time temp matches 1 run time set day
execute if score t_lobby_time temp matches 2 run time set noon
execute if score t_lobby_time temp matches 3 run time set night
execute if score t_lobby_time temp matches 4 run time set midnight
scoreboard players reset t_lobby_time temp

execute store result score t_lobby_weather temp run data get storage lobby_data edit_buffer.weather
execute if score t_lobby_weather temp matches 1 run weather clear
execute if score t_lobby_weather temp matches 2 run weather rain
execute if score t_lobby_weather temp matches 3 run weather thunder
scoreboard players reset t_lobby_weather temp


tellraw @s [{"text":"Editing the lobby...","color":"yellow"}]
execute unless data storage lobby_data version run tellraw @s [{"text":"To spawn the official lobby, click ","color":"yellow"},\
{text:"here",color:"gold","click_event":{"action":"run_command","command":"/function rauch:settings/edit_lobby/spawn_official_lobby"}}]
