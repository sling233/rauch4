execute at @e[type=marker,tag=flag_pos] run function rauch:game/mode/capture_the_flag/spawn_flag
function rauch:game/mode/capture_the_flag/remove_flag
title @a[tag=game] title ""
title @a[tag=game] subtitle "Flag Dropped"
title @a[tag=spectator] title ""
title @a[tag=spectator] subtitle "Flag Dropped"
scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000
kill @e[type=marker,tag=flag_pos]
