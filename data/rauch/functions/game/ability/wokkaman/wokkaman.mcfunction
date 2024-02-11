execute as @s[scores={slime_despawn_timer=-1}] run function rauch:game/ability/wokkaman/r/despawn
execute at @s unless block ~ ~-0.2 ~ #nonsolid run tag @s add t_grounded
execute as @s[scores={flyerFSchedule=-1}] run attribute @s minecraft:generic.gravity base set 0.08
execute as @s[scores={flyerFSchedule=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={wok_hover_schedule=..-2},tag=t_grounded] run scoreboard players set @s wok_hover_schedule -1
execute as @s[scores={wok_hover_schedule=..-1}] at @s run particle minecraft:poof ~ ~-0.2 ~ 0.1 0.05 0.1 0.05 2 force
execute as @s[scores={wok_hover_schedule=-20}] run effect clear @s minecraft:levitation
execute as @s[scores={wok_hover_schedule=-17}] run attribute @s minecraft:generic.gravity base set 0
execute as @s[scores={wok_hover_schedule=-1}] run attribute @s minecraft:generic.gravity base set 0.08
execute as @s[tag=t_grounded] run tag @s add wok_f_air
execute as @s[tag=t_grounded] unless score @s flyerFSchedule matches ..0 unless score @s push_levitation_timer matches ..0 run attribute @s minecraft:generic.gravity base set 0.08
execute as @s[tag=wok_stomp_search] run function rauch:game/ability/wokkaman/sq/search_player
execute as @s[tag=t_grounded,tag=wok_stomp_search] run tag @s remove wok_stomp_search
tag @s remove t_grounded
