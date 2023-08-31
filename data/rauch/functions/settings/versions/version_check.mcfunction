# easy way to change version
scoreboard objectives add this_version dummy
scoreboard players set Global this_version 520

# if downpatching (this function gets called again as a side effect, click is set to 10 temporarily)
execute if score Global click matches 10 run return 0

# if version didn't change, return
execute if score Global version = Global this_version run return 0

# if the pack is installed for the first time, return
execute unless score Global click matches 0.. run return 0

# version changed:
tellraw @a [{"text":"------ Data Pack Version Changed ------","color":"green","hoverEvent":{"action":"show_text","contents":"This removes scoreboard objectives, teams and bossbars that are now obsolete and re-adds scoreboard objectives types if they changed (eg. dummy to trigger. This would actually break things if not re-added). Only works when updating to newer versions."}}]
# abort game if a game is running
execute if score Global game_running matches 1 run tellraw @a [{"text":"Stopped ongoing game","color":"yellow"}]
execute if score Global game_running matches 1 run function rauch:game/framework/end_game

# update from old pack
execute unless score Global version matches 520.. run function rauch:settings/versions/520
#execute unless score Global version matches 521.. run function rauch:settings/versions/521

# downpatch
execute if score Global version > Global this_version run function rauch:settings/versions/downpatch
# REMINDER: when changing version this function need to be updated too ^

tellraw @a [{"text":"------------------------------------","color":"green"}]
# potentially new kit selector etc
clear @a[tag=lobby]

scoreboard objectives remove version_changed
scoreboard objectives remove this_version
