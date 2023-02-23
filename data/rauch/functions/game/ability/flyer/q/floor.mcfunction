scoreboard players add @s click 1
execute if score @s click matches 30.. run tag @s add break
execute at @s rotated 0 0 align y unless block ~ ~-1 ~ #nonsolid run tag @s add break
execute at @s[tag=!break] rotated 0 0 align y run tp @s ~ ~-1 ~ 0 0
execute at @s[tag=!break] run function rauch:game/ability/flyer/q/floor
tag @s remove setup
