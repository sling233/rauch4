execute if score Global game_running matches 1 run tellraw @s {"text":"The game can't be started since there is already a game running","color":"red"}
execute unless score Global game_running matches 1 run function rauch:game/framework/start_game
