scoreboard players set Global center_red 0
scoreboard players set Global center_blue 0
scoreboard players set Global capture_info 0
scoreboard players set Global time_red 1200
scoreboard players set Global time_blue 1200
scoreboard objectives setdisplay sidebar.team.blue time_times
scoreboard objectives setdisplay sidebar.team.red time_times
scoreboard players set Global gamestart 120

bossbar set minecraft:red_capturing players @a[tag=game]
bossbar set minecraft:blue_capturing players @a[tag=game]
bossbar set minecraft:red_captured players @a[tag=game]
bossbar set minecraft:blue_captured players @a[tag=game]
bossbar set minecraft:red_contested players @a[tag=game]
bossbar set minecraft:blue_contested players @a[tag=game]
