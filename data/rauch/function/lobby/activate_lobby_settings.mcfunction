execute store result score Global enable_launchpads run data get storage lobby_data has_launchpads

execute store result score t_lobby_time temp run data get storage lobby_data time
execute if score t_lobby_time temp matches 1 run time set day
execute if score t_lobby_time temp matches 2 run time set noon
execute if score t_lobby_time temp matches 3 run time set night
execute if score t_lobby_time temp matches 4 run time set midnight
scoreboard players reset t_lobby_time temp

execute store result score t_lobby_weather temp run data get storage lobby_data weather
execute if score t_lobby_weather temp matches 1 run weather clear
execute if score t_lobby_weather temp matches 2 run weather rain
execute if score t_lobby_weather temp matches 3 run weather thunder
scoreboard players reset t_lobby_weather temp
