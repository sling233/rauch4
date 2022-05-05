scoreboard players set Global control 100
scoreboard players set Global capture_info 1
scoreboard players set Global time_red 412000
scoreboard players set Global time_blue 412000
scoreboard objectives setdisplay sidebar.team.blue time_times
scoreboard objectives setdisplay sidebar.team.red time_times
scoreboard players set Global gamestart 120

bossbar set center_control players @a[tag=game]
bossbar set center_control visible true
