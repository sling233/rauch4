scoreboard players reset @s leave
execute unless score Global game_running matches 1 as @s[tag=game] run function rauch:game/framework/move_player
execute unless score Global game_running matches 1 as @s[tag=spectator] run function rauch:game/framework/spectate_stop
#execute as @s[tag=!lobby,tag=!admin,tag=!game,tag=!spectator] run function rauch:lobby/firstjoin
