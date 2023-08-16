scoreboard players add Global flag_points_red 1
function rauch:game/mode/capture_the_flag/score
#add juice
title @a[tag=!lobby] title {"text":"Red Scored","color":"red"}
title @a[tag=!lobby] subtitle ""

execute at @e[type=marker,tag=t1,tag=map] run tp @a[team=Red] ~ ~-20 ~
execute at @e[type=marker,tag=t2,tag=map] run tp @a[team=Blue] ~ ~-20 ~

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s
