scoreboard players set Global control 100
scoreboard players set Global capture_info 2

scoreboard players set @a stats_g_points_scored 0

# update bossbar once at the start, because whilst gamstart id doesn't
function rauch:game/mode/king_of_the_hill/update_bossbar

bossbar set center_control players @a[tag=game]
bossbar set center_control visible true
