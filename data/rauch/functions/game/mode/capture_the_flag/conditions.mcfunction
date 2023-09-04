scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000

scoreboard players set Global flag_points_red 0
scoreboard players set Global flag_points_blue 0

scoreboard players set Global ctf_time 3600
scoreboard players set Global gamestart 120

scoreboard players set @a stats_g_points_scored 0

function rauch:game/mode/capture_the_flag/visual/bossbar_setup

scoreboard objectives add 50 dummy
scoreboard players set Global 50 50
scoreboard players operation Global flag_min_distance_red = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_red *= Global 50
scoreboard players operation Global flag_min_distance_blue = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_blue *= Global 50
scoreboard objectives remove 50

# some problems when map is unloaded
# function rauch:game/mode/capture_the_flag/spawn_flag
execute summon armor_stand run function rauch:game/mode/capture_the_flag/spawn_flag_unloaded
