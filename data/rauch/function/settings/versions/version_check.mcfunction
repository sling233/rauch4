# change version (downpatch and version_change has to be updated as well)
scoreboard players set this_version temp 607

# if version didn't change, return
execute if score Global version = this_version temp run return run function rauch:settings/versions/version_not_changed

# if the pack is installed for the first time set version and return
execute unless score Global version matches 0.. run return run function rauch:settings/versions/version_first_time

# version changed:
tellraw @a[tag=admin] [{"text":"Installed Datapack changed, click","color":"yellow"},\
{"text":" HERE ","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/versions/version_change"}},\
{"text":"to update."}]
execute unless entity @a[tag=admin] run tellraw @a [{"text":"Installed Datapack changed, click","color":"yellow"},\
{"text":" HERE ","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/versions/version_change"}},\
{"text":"to update."}]

scoreboard players reset this_version temp
