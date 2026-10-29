# called by finish
tag @s add remove_on_game_end
data modify entity @s Pos set from storage lobby_data edit_buffer.position
execute at @s run setworldspawn ~ ~ ~
kill @s