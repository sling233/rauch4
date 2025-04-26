execute as @s[tag=game] run return 0
execute as @s[tag=spectator] run return 0
execute as @s[tag=edit_map] run return 0
tag @s add lobby

# default player preferences
execute unless score @s actionbar_design matches 0.. run scoreboard players set @s actionbar_design 3
execute unless score @s night_vision_accessibility matches 0.. run scoreboard players set @s night_vision_accessibility 0
execute unless score @s hide_ambient_particles matches 0.. run scoreboard players set @s hide_ambient_particles 0

function rauch:lobby/tp_to_lobby
gamemode adventure @s
