# return if there is no game running
execute unless score Global game_running matches 1 run return run tellraw @s {"text":"There is no game running at the moment","color":"red"}
# else start spectating
function rauch:game/framework/spectate_start