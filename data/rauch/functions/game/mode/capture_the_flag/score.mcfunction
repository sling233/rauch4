function rauch:game/mode/capture_the_flag/flag_reset
execute as @a[tag=game,predicate=rauch:stun] run function rauch:game/mechanics/unstun
execute as @a[tag=game,tag=zarzahn_hook] run function rauch:game/ability/zarzahn/r/cancel_hook

execute at @e[type=marker,tag=t1,tag=map] run tp @a[team=Red,tag=!dead] ~ ~-20 ~
execute at @e[type=marker,tag=t2,tag=map] run tp @a[team=Blue,tag=!dead] ~ ~-20 ~

scoreboard players add @s stats_g_points_scored 1

scoreboard objectives add 50 dummy
scoreboard players set Global 50 50
scoreboard players operation Global flag_min_distance_red = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_red *= Global 50
scoreboard players operation Global flag_min_distance_blue = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_blue *= Global 50
scoreboard objectives remove 50

# cancel potential overtime, as the team will have scored and thus won
scoreboard players set Global ctf_overtime 0
