# check if lobby is prebuilt, else return
execute unless data storage lobby_data version run return run tellraw @s {"text":"Lobby is not the prebuilt lobby","color":"red"}
execute store result score t_current_version temp run data get storage lobby_data version
execute store result score t_latest_version temp run data get storage lobby_data latest_version


execute if score t_current_version temp = t_latest_version temp run tellraw @s {"text":"No Update found","color":"yellow"}
execute unless score t_current_version temp = t_latest_version temp run tellraw @a[tag=admin] [{"text":"An Update is available for the prebuilt lobby. Click ","color":"yellow"},\
{"text":"here","click_event":{"action":"run_command","command":"/function rauch:settings/spawn_lobby/update"},"italic":true,"color":"gold"},{"text":" to update."},\
{"text":" Click ","color":"yellow"},{"text":"here","color":"gold","click_event":{"action":"run_command","command":"/data remove storage lobby_data version"}},\
{"text":" if you don't use the prebuilt lobby anymore.","color":"yellow"}]

scoreboard players reset t_current_version temp
scoreboard players reset t_latest_version temp
