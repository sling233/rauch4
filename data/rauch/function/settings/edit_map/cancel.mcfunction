data remove storage map_data edit_buffer
tag @s remove add_map
tag @s remove edit_map
clear @s
scoreboard players reset @s click
scoreboard players reset Global mapParticle
tag @s add lobby
weather clear
time set day
tellraw @s {"text":"Cancelled","color":"yellow"}
