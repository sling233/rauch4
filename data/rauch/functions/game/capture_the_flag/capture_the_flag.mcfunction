execute as @a[tag=flagPickedUp] run function rauch:game/capture_the_flag/flag_picked_up
execute at @e[type=minecraft:armor_stand,tag=flag,limit=1] as @a[tag=game,tag=!dead,distance=..1,limit=1] run function rauch:game/capture_the_flag/flag_pickup

function rauch:game/add/respawn/respawn_main
scoreboard players operation Red: flagDisplay = Global flag_points_red
scoreboard players operation Blue: flagDisplay = Global flag_points_blue

execute if score Global flagDistanceRed matches ..9 as @a[tag=flagPickedUp] run function rauch:game/capture_the_flag/red_score
execute if score Global flagDistanceBlue matches ..9 as @a[tag=flagPickedUp] run function rauch:game/capture_the_flag/blue_score

execute if score Global flag_points_red matches 5.. if score Global flag_points_blue matches 5.. run function rauch:game/add/stats/tie
execute if score Global flag_points_red matches 5.. unless score Global flag_points_blue matches 5.. run function rauch:game/add/stats/win_red
execute if score Global flag_points_blue matches 5.. unless score Global flag_points_red matches 5.. run function rauch:game/add/stats/win_blue
