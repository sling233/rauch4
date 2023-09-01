execute at @e[type=marker,tag=map,tag=ce] positioned ~ ~-20 ~ run function rauch:game/mode/capture_the_flag/spawn_flag
execute as @a[tag=flagPickedUp] run function rauch:game/mode/capture_the_flag/remove_flag
title @a[tag=game] title ""
title @a[tag=game] subtitle "Flag Reset to Center"
title @a[tag=spectator] title ""
title @a[tag=spectator] subtitle "Flag Reset to Center"
scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000
scoreboard objectives add 50 dummy
scoreboard players set Global 50 50
scoreboard players operation Global flag_min_distance_red = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_red *= Global 50
scoreboard players operation Global flag_min_distance_blue = Global spawn_to_center_distance
scoreboard players operation Global flag_min_distance_blue *= Global 50
scoreboard objectives remove 50
