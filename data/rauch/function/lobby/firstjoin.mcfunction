# gets executed once on players who first joins the world.
execute as @s[tag=game] run return 0
execute as @s[tag=spectator] run return 0
execute as @s[tag=edit_map] run return 0
function rauch:lobby/join_lobby

# default player preferences
execute unless score @s actionbar_design matches 0.. run scoreboard players set @s actionbar_design 3
execute unless score @s night_vision_accessibility matches 0.. run scoreboard players set @s night_vision_accessibility 0
execute unless score @s hide_ambient_particles matches 0.. run scoreboard players set @s hide_ambient_particles 0

tellraw @s [{"color":"yellow","text":"Welcome to Wokkagames!"},\
{"text":"\nHover here for a Player Guide","color":"light_purple","hover_event":{"action":"show_text","value":[\
{"text":"Placeholder tutorial. the world needs admins to start and manage games. right click to activate r ability, \
press item drop key to activate q ability, press item swap key to activate f ability."}]}}]
function rauch:lobby/tp_to_lobby
