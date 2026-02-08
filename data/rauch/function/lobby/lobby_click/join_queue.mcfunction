# return if there is a game running
execute if score Global game_running matches 1 run return run tellraw @s {"text":"A game running at the moment, can't join queue","color":"red"}
execute unless score @s kit matches 1..9 run return run tellraw @s {"text":"Select a kit first","color":"red"}
# else join the queue
tag @s add queue
team join Random @s
clear @s
