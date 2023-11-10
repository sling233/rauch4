execute at @s unless block ~ ~-0.2 ~ #nonsolid run tag @s add t_grounded
execute as @s[tag=t_grounded] run function rauch:game/ability/wokkaman/f/ground
execute as @s[tag=!t_grounded,scores={wok_hover_schedule=0..}] run function rauch:game/ability/wokkaman/f/air
tag @s remove t_grounded
