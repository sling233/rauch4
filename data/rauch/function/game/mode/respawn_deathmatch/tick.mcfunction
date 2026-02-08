scoreboard players operation Red: killsDisplay = Global killNumRed
scoreboard players operation Blue: killsDisplay = Global killNumBlue

execute unless score Global gameend matches 1.. if score Global killNumRed >= Global rd_kills_to_win if score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/framework/stats/tie
execute unless score Global gameend matches 1.. if score Global killNumRed >= Global rd_kills_to_win unless score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/framework/stats/win_red
execute unless score Global gameend matches 1.. if score Global killNumBlue >= Global rd_kills_to_win unless score Global killNumRed >= Global rd_kills_to_win run function rauch:game/framework/stats/win_blue
