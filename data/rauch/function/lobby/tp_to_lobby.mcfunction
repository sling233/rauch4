data modify storage temp x set from storage lobby_data position[0]
data modify storage temp y set from storage lobby_data position[1]
data modify storage temp z set from storage lobby_data position[2]

function rauch:lobby/tp_to_lobby_macro with storage temp
#data modify entity @e[type=marker,tag=lobby_move,limit=1] Pos set from storage lobby_data position
#execute at @e[type=marker,tag=lobby_move,limit=1] run tp @s ~ ~ ~
#execute at @e[type=marker,tag=lobby_move,limit=1] run spawnpoint @s ~ ~ ~
#kill @e[type=marker,tag=lobby_move]
