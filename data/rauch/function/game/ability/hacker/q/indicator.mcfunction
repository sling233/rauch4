scoreboard players add @s click 1
execute at @s run tp @s ^ ^ ^0.153
execute at @s run particle minecraft:dust_color_transition{from_color:[0.2,0.8,0.2],scale:1,to_color:[0.1,0.2,0.1]} ~ ~0.1 ~ 0.02 0.02 0.02 1 1 force
execute at @s run tp @s ^ ^ ^0.153
execute at @s run particle minecraft:dust_color_transition{from_color:[0.2,0.8,0.2],scale:1,to_color:[0.1,0.2,0.1]} ~ ~0.1 ~ 0.02 0.02 0.02 1 1 force
execute as @s[scores={click=18..}] run kill @s
