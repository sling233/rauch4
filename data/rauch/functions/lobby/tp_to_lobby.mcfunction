summon marker ~ ~ ~ {Tags:["lobby_move"]}
data modify entity @e[type=marker,tag=lobby_move,limit=1] Pos set from storage lobby_data position
execute at @e[type=marker,tag=lobby_move,limit=1] run tp @s ~ ~ ~
execute at @e[type=marker,tag=lobby_move,limit=1] run spawnpoint @s ~ ~ ~
kill @e[type=marker,tag=lobby_move]
