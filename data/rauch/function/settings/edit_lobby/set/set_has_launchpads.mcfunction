scoreboard players remove @s map_setting 300
execute store result storage lobby_data edit_buffer.has_launchpads int 1 run scoreboard players get @s map_setting
scoreboard players operation Global enable_launchpads = @s map_setting
