execute store result score latest_version temp run function rauch:settings/versions/get_version

# if version didn't change, return
execute if score Global version = latest_version temp run return run function rauch:settings/versions/version_not_changed

# if the pack is installed for the first time set version and return
execute unless score Global version matches 0.. run return run function rauch:settings/versions/version_first_time

# version changed:
tellraw @a[tag=admin] [{"text":"You installed a new version of the pack, click","color":"yellow"},\
{"text":" HERE ","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/versions/version_change"}},\
{"text":"to update."}]
execute unless entity @a[tag=admin] run tellraw @a [{"text":"You installed a new version of the pack, click","color":"yellow"},\
{"text":" HERE ","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/versions/version_change"}},\
{"text":"to update."}]

scoreboard players reset latest_version temp
