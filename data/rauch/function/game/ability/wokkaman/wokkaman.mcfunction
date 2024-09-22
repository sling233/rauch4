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
execute as @s[tag=t_grounded,tag=wok_stomp_search] run function rauch:game/ability/wokkaman/sq/searching_on_ground

execute as @s[scores={fly=1..},tag=!flying] run tag @s add flying
execute as @s[tag=flying,tag=t_grounded] run function rauch:game/ability/wokkaman/f/land
execute as @s[scores={elytra=0..}] run function rauch:game/ability/wokkaman/f/elytra_cooldown

scoreboard players add @s wokkaman_rocket_phase 1
scoreboard players operation t_angle global = @s wokkaman_rocket_phase
execute store result score t_player_angle global run data get entity @s Rotation[0]
execute as @s[tag=t_grounded] run scoreboard players set t_is_grounded global 1

scoreboard players operation t_pnum global = @s pnum
tag @s add temp
execute as @e[type=item_display,tag=wok_rocket,tag=rotating] if score @s pnum = t_pnum global at @s run function rauch:game/ability/wokkaman/q/rocket_rotate
tag @s remove temp
scoreboard players reset t_pnum global

scoreboard players reset t_angle global
scoreboard players reset t_is_grounded global
scoreboard players reset t_player_angle global

tag @s remove t_grounded
