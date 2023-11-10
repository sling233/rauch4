execute at @s unless block ~ ~-0.2 ~ #nonsolid run tag @s add t_grounded
execute as @s[scores={flyerFSchedule=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={wok_hover_schedule=-1}] run effect clear @s minecraft:levitation
execute as @s[tag=t_grounded] unless score @s flyerFSchedule matches ..0 run effect clear @s minecraft:levitation
tag @s remove t_grounded
