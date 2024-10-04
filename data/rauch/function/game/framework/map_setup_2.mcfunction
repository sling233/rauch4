execute store result score Global mapParticle run data get storage map_data active.particle
execute store result score Global enable_launchpads run data get storage map_data active.has_launchpads
execute store result score Global map_is_dark run data get storage map_data active.is_dark

execute store result score t_map_time temp run data get storage map_data active.time
execute if score t_map_time temp matches 1 run time set day
execute if score t_map_time temp matches 2 run time set noon
execute if score t_map_time temp matches 3 run time set night
execute if score t_map_time temp matches 4 run time set midnight
scoreboard players reset t_map_time temp

execute store result score t_map_weather temp run data get storage map_data active.weather
execute if score t_map_weather temp matches 1 run weather clear
execute if score t_map_weather temp matches 2 run weather rain
execute if score t_map_weather temp matches 3 run weather thunder
scoreboard players reset t_map_weather temp

execute store result score t_disable_block_interaction temp run data get storage map_data active.disable_block_interaction
execute if score t_disable_block_interaction temp matches 1 as @a[tag=game] run attribute @s minecraft:player.block_interaction_range base set -1
scoreboard players reset t_disable_block_interaction temp

execute if score Global map_is_dark matches 1 as @a[tag=game,scores={night_vision_accessibility=1}] run effect give @s minecraft:night_vision infinite 0 true
