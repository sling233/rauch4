data remove storage lobby_data edit_buffer
tag @s remove edit_lobby
tag @s remove editing_official_lobby
clear @s
scoreboard players reset @s click
tag @s add lobby
function rauch:lobby/activate_lobby_settings
