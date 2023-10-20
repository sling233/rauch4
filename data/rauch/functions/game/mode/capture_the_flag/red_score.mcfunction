scoreboard players add Global flag_points_red 1
function rauch:game/mode/capture_the_flag/score
#add juice
title @a[tag=!lobby] title {"text":"Red Scored","color":"red"}
title @a[tag=!lobby] subtitle ""

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s
