scoreboard players add @s click 1

execute as @s[scores={click=15..}] run tag @s add collision
execute at @s unless block ^ ^ ^1 #nonsolid run tag @s add collision

execute at @s run tp @s[tag=!collision] ^ ^ ^1
execute as @s[tag=!collision] run function rauch:game/core/ability/dash/dash
