scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000
scoreboard players reset Global flag_points_red
scoreboard players reset Global flag_points_blue
scoreboard objectives setdisplay sidebar.team.blue flagDisplay
scoreboard objectives setdisplay sidebar.team.red flagDisplay
scoreboard players set Global gamestart 120

function rauch:game/capture_the_flag/spawn_flag
