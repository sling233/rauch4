scoreboard players remove @s map_setting 200
execute store result storage lobby_data edit_buffer.weather int 1 run scoreboard players get @s map_setting
execute if score @s map_setting matches 1 run weather clear
execute if score @s map_setting matches 2 run weather rain
execute if score @s map_setting matches 3 run weather thunder
