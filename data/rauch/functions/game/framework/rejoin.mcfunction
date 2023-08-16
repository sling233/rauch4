advancement revoke @s only rauch:leave
scoreboard players reset @s leave

execute as @s[tag=game] run function rauch:game/framework/move_player
execute as @s[tag=spectator] run function rauch:game/framework/spectate_stop
execute as @s[tag=!lobby,tag=!admin] run function rauch:lobby/firstjoin
