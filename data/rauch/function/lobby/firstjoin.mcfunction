execute as @s[tag=game] run return 0
execute as @s[tag=spectator] run return 0
execute as @s[tag=edit_map] run return 0
tag @s add lobby

function rauch:lobby/tp_to_lobby
gamemode adventure @s
