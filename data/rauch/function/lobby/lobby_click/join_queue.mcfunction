# return if there is a game running
execute if score Global game_running matches 1 run return run tellraw @s {"text":"There is a game running at the moment","color":"red"}
# else join the queue
tag @s add queue
team join Random @s
clear @s
