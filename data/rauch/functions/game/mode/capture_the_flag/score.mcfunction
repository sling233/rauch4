function rauch:game/mode/capture_the_flag/flag_reset
execute as @a[tag=game,predicate=rauch:stun] run function rauch:game/mechanics/unstun
execute as @a[tag=game,tag=zarzahn_hook] run function rauch:game/ability/zarzahn/r/cancel_hook
scoreboard players add @s stats_g_points_scored 1
function rauch:game/mode/capture_the_flag/visual/update_bossbar_title
