# return if no map is selected
execute unless data storage map_data active run return run tellraw @s {"text":"A Map has to be selected first.","color":"red"}
# return if a game is already running
execute if score Global game_running matches 1 run return run tellraw @s {"text":"The game can't be started since there is already a game running.","color":"red"}
execute if entity @a[tag=edit_map] run return run tellraw @s {"text":"Cannot start game while someone is editing a map.","color":"red"}
execute if entity @a[tag=edit_lobby] run return run tellraw @s {"text":"Cannot start game while someone is editing the lobby.","color":"red"}
execute unless entity @a[tag=queue] run return run tellraw @s {"text":"Cannot start game because there are no players in queue.","color":"red"}
# else start game
function rauch:game/framework/start_game