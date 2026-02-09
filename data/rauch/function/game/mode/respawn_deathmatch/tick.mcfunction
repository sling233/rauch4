scoreboard players operation Red: killsDisplay = Global killNumRed
scoreboard players operation Blue: killsDisplay = Global killNumBlue

execute if score Global gameend matches 1.. run return 0
execute if score Global killNumRed >= Global rd_kills_to_win if score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/framework/stats/tie
execute if score Global killNumRed >= Global rd_kills_to_win unless score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/framework/stats/win_red
execute if score Global killNumBlue >= Global rd_kills_to_win unless score Global killNumRed >= Global rd_kills_to_win run function rauch:game/framework/stats/win_blue
