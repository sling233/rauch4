scoreboard players remove @s map_setting 100
execute store result storage map_data edit_buffer.time int 1 run scoreboard players get @s map_setting
execute if score @s map_setting matches 1 run time set day
execute if score @s map_setting matches 2 run time set noon
execute if score @s map_setting matches 3 run time set night
execute if score @s map_setting matches 4 run time set midnight
