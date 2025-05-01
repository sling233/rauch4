data modify entity @s Pos set from storage lobby_data spawn_location
execute at @s run function rauch:settings/spawn_lobby/spawn
kill @s
