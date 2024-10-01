scoreboard players remove @s map_setting 400
execute store result storage map_data edit_buffer.disable_block_interaction int 1 run scoreboard players get @s map_setting
