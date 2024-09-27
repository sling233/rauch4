scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000

scoreboard players set Global flag_points_red 0
scoreboard players set Global flag_points_blue 0

scoreboard players set 1 const 1
scoreboard players operation Global ctf_time = Global ctf_game_duration
scoreboard players operation Global ctf_time -= 1 const

scoreboard players set @a stats_g_points_scored 0

function rauch:game/mode/capture_the_flag/visual/bossbar_setup
team modify Flag color white

scoreboard players set 50 const 50
scoreboard players operation Global flag_min_distance_red = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_red *= 50 const
scoreboard players operation Global flag_min_distance_blue = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_blue *= 50 const

# update bossbar once at the start, because whilst gamstart id doesn't
function rauch:game/mode/capture_the_flag/visual/bossbar
function rauch:game/mode/capture_the_flag/visual/update_bossbar_title

# some problems when map is unloaded
# function rauch:game/mode/capture_the_flag/spawn_flag
execute summon armor_stand run function rauch:game/mode/capture_the_flag/spawn_flag_unloaded
