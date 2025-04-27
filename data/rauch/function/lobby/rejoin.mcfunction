scoreboard players reset @s leave
# when player was in a game when leaving, kick if game has stopped
execute unless score Global game_running matches 1 as @s[tag=game] run function rauch:game/framework/move_player
execute unless score Global game_running matches 1 as @s[tag=spectator] run function rauch:game/framework/spectate_stop

# when player was in a game when leaving, kick if a new game has started
execute if score Global game_running matches 1 unless score Global game_id = @s game_id as @s[tag=game] run function rauch:game/framework/move_player
execute if score Global game_running matches 1 unless score Global game_id = @s game_id as @s[tag=spectator] run function rauch:game/framework/spectate_stop
#execute as @s[tag=!lobby,tag=!admin,tag=!game,tag=!spectator] run function rauch:lobby/firstjoin

# when a player was in queue when leaving and a game has started in the meantime, remove from queue
execute as @s[tag=queue] if score Global game_running matches 1 run function rauch:lobby/lobby_click/leave_queue
