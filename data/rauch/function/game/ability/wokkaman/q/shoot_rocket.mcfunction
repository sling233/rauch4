execute if score t_shot_rocket temp matches 1 run return 0
scoreboard players set t_shot_rocket temp 1
tag @s remove rotating
tag @s remove to_be_shot
tag @s add active
tag @s add temp
execute at @s as @a if score @s pnum = t_pnum global rotated as @s run tp @e[type=item_display,tag=temp] ~ ~ ~ ~ ~
tag @s remove temp
