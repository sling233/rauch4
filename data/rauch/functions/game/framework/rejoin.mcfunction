scoreboard players reset @s leave
# check if game has stopped
execute unless score Global game_running matches 1 as @s[tag=game] run function rauch:game/framework/move_player
execute unless score Global game_running matches 1 as @s[tag=spectator] run function rauch:game/framework/spectate_stop

# if a new game has started
execute if score Global game_running matches 1 unless score Global game_id = @s game_id as @s[tag=game] run function rauch:game/framework/move_player
execute if score Global game_running matches 1 unless score Global game_id = @s game_id as @s[tag=spectator] run function rauch:game/framework/spectate_stop
#execute as @s[tag=!lobby,tag=!admin,tag=!game,tag=!spectator] run function rauch:lobby/firstjoin
