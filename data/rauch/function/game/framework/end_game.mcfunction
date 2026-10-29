tp @e[type=slime,tag=push] ~ ~-1000 ~
kill @e[tag=remove_on_game_end]
#global times und so
#scoreboard players reset Global center_red
#scoreboard players reset Global center_blue
scoreboard players reset Global capture_info
scoreboard players reset Global time_blue
scoreboard players reset Global time_red
scoreboard players reset Global ctf_overtime
scoreboard players reset Global killNumRed
scoreboard players reset Global killNumBlue
scoreboard players reset Global killsDisplay
scoreboard players reset Global gameend

scoreboard objectives setdisplay sidebar
bossbar set minecraft:center_control visible false
bossbar set minecraft:flag_location visible false
bossbar set minecraft:wokkaman_health visible false
function rauch:game/ui/bossbar/allinvisible
execute as @a[tag=game] run function rauch:game/framework/move_player
execute as @a[tag=spectator] run function rauch:game/framework/spectate_stop
execute if score %enable_delayed_clear global matches 1 run schedule function rauch:game/framework/clear 10t

scoreboard players reset Global game_running

function rauch:lobby/activate_lobby_settings
