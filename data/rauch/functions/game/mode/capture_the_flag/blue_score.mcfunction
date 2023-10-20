scoreboard players add Global flag_points_blue 1
function rauch:game/mode/capture_the_flag/score
#add juice
title @a[tag=game] title {"text":"Blue Scored","color":"blue"}
title @a[tag=game] subtitle ""

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s
