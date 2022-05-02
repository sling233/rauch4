scoreboard players add @s click 1
execute at @s run tp @s ^ ^ ^0.17
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~ ~0.1 ~ 0.02 0.02 0.02 1 1 force
execute at @s run tp @s ^ ^ ^0.17
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~ ~0.1 ~ 0.02 0.02 0.02 1 1 force
execute as @s[scores={click=16..}] run kill @s
