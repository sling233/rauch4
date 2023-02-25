scoreboard players add Global flag_points_blue 1
function rauch:game/mode/capture_the_flag/flag_drop
#add juice
title @a[tag=game] title {"text":"Blue Scored","color":"blue"}
title @a[tag=game] subtitle ""

execute at @e[tag=t1,tag=map,tag=active,type=armor_stand] run tp @a[team=Red] ~ ~-20 ~
execute at @e[tag=t2,tag=map,tag=active,type=armor_stand] run tp @a[team=Blue] ~ ~-20 ~

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s