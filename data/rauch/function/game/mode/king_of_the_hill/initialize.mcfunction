execute as @a[team=Red,tag=game] run function rauch:game/framework/tp_to_red_spawn
execute as @a[team=Blue,tag=game] run function rauch:game/framework/tp_to_blue_spawn
execute at @a[tag=game] run spawnpoint @s ~ ~ ~

scoreboard players set Global control 100
scoreboard players set Global capture_info 3

scoreboard players set @a stats_g_points_scored 0

execute summon marker run function rauch:game/mode/king_of_the_hill/setup_point

# update bossbar once at the start, because whilst gamstart id doesn't
function rauch:game/mode/king_of_the_hill/update_bossbar

bossbar set center_control players @a[tag=game]
bossbar set center_control visible true
