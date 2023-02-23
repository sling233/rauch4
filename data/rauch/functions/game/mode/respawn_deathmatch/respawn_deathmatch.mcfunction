execute as @a[scores={death=1..},team=Red] run scoreboard players add Global killNumBlue 1
execute as @a[scores={death=1..},team=Blue] run scoreboard players add Global killNumRed 1
function rauch:game/mechanics/respawn/respawn_main
scoreboard players operation Red: killsDisplay = Global killNumRed
scoreboard players operation Blue: killsDisplay = Global killNumBlue

execute unless score Global gameend matches 1.. if score Global killNumRed >= Global rd_kills_to_win if score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/framework/stats/tie
execute unless score Global gameend matches 1.. if score Global killNumRed >= Global rd_kills_to_win unless score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/framework/stats/win_red
execute unless score Global gameend matches 1.. if score Global killNumBlue >= Global rd_kills_to_win unless score Global killNumRed >= Global rd_kills_to_win run function rauch:game/framework/stats/win_blue
