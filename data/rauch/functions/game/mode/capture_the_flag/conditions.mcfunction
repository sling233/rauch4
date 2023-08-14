scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000
scoreboard players reset Global flag_points_red
scoreboard players reset Global flag_points_blue
scoreboard objectives setdisplay sidebar flagDisplay
scoreboard players set Global gamestart 120

scoreboard players set @a stats_g_points_scored 0

# some problems when map is unloaded
# function rauch:game/mode/capture_the_flag/spawn_flag
execute summon armor_stand run function rauch:game/mode/capture_the_flag/spawn_flag_unloaded
