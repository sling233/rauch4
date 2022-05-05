#execute as @a[scores={death=1..}] run function rauch:game/respawn_deathmatch/die
#execute as @a[scores={respawn=80}] run function rauch:game/respawn_deathmatch/respawn
execute as @a[scores={death=1..},team=Red] run scoreboard players add Global killNumBlue 1
execute as @a[scores={death=1..},team=Blue] run scoreboard players add Global killNumRed 1
function rauch:game/add/respawn/respawn_main
scoreboard players operation Red: killsDisplay = Global killNumRed
scoreboard players operation Blue: killsDisplay = Global killNumBlue

execute if score Global killNumRed >= Global rd_kills_to_win if score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/add/stats/tie
execute if score Global killNumRed >= Global rd_kills_to_win unless score Global killNumBlue >= Global rd_kills_to_win run function rauch:game/add/stats/win_red
execute if score Global killNumBlue >= Global rd_kills_to_win unless score Global killNumRed >= Global rd_kills_to_win run function rauch:game/add/stats/win_blue
