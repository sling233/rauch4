# check if there is someone editing a map
execute if entity @a[tag=edit_map] run return run \
    tellraw @s [{"text":"Can't try kit because someone is editing a map.","color":"red"}]

# check if there is someone editing the lobby
execute if entity @a[tag=edit_lobby] run return run \
    tellraw @s [{"text":"Can't try kit because someone is editing the lobby.","color":"red"}]

# check if a map is selected
execute unless data storage minecraft:map_data active.red run return run \
    tellraw @s [{"text":"Can't try kit because no map is selected.","color":"red"}]

# check if there is already a (non-testing) game running
execute if score Global game_running matches 1 unless score Global mode matches 6 run \
    return run tellraw @s {"text":"A game is running at the moment, can't try kit.","color":"red"}

# check number of players trying
scoreboard players set t_number_of_players temp 0
execute as @a[tag=game] run scoreboard players add t_number_of_players temp 1
execute if score t_number_of_players temp matches 12.. run \
    return run tellraw @s {"text":"Too many players trying their kit right now.","color":"red"}


# if necessary start new game
scoreboard players set Global mode 6
say set mode to 6
execute unless score Global game_running matches 1 run function rauch:game/framework/start_game

# join game
function rauch:game/mode/try/join