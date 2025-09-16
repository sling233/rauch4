# called by finish
data modify entity @s Pos set from storage lobby_data edit_buffer.position
execute at @s run setworldspawn ~ ~ ~
kill @s