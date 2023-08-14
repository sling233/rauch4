scoreboard players set Global control 100
scoreboard players set Global capture_info 1
scoreboard players set Global time_red 400200
scoreboard players set Global time_blue 400200
scoreboard objectives setdisplay sidebar time_times
scoreboard players set Global gamestart 120

scoreboard players set @a stats_g_points_scored 0

bossbar set center_control players @a[tag=game]
bossbar set center_control visible true
