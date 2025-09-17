tag @s add lobbysetup
data modify storage lobby_data position set from entity @s Pos
execute at @s run setworldspawn ~ ~ ~
kill @s