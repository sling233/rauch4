execute at @s run summon marker ~ ~ ~ {Tags:["lobby_update"]}
data modify entity @e[type=marker,tag=lobby_update,limit=1] Pos set from storage lobby_data spawn_location
execute as @e[type=marker,tag=lobby_update,limit=1] at @s run function rauch:settings/spawn_lobby/spawn
kill @e[type=marker,tag=lobby_update]
