data remove storage map_data edit_buffer
tag @s remove add_map
tag @s remove edit_map
tag @s remove editing_official_map
clear @s
scoreboard players reset @s click
scoreboard players reset Global mapParticle
tag @s add lobby
function rauch:lobby/activate_lobby_settings
