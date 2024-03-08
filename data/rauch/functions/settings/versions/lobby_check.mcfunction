# check if lobby is prebuilt, else return
execute unless data storage lobby_data version run return 0
scoreboard objectives add t_lobby_id dummy
execute store result score Global t_lobby_id run data get storage lobby_data version

# REMINDER: remember to change the version in update as well
execute if score Global t_lobby_id matches 2 run tellraw @a {"text":"No Update found","color":"yellow"}
execute unless score Global t_lobby_id matches 2 run tellraw @a [{"text":"An Update is available for the prebuilt lobby. Click ","color":"yellow"},\
{"text":"here","clickEvent":{"action":"run_command","value":"/function rauch:settings/spawn_lobby/update"},"italic":true},{"text":" to update."},\
{"text":" Click ","color":"yellow"},{"text":"here","clickEvent":{"action":"run_command","value":"/data remove storage lobby_data version"}},\
{"text":" if you don't use the prebuilt lobby anymore.","color":"yellow"}]

scoreboard objectives remove t_lobby_id
