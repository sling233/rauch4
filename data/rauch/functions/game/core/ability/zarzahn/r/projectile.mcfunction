scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition 0.5 0.5 0.8 2 0 0 0.3 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition 0.5 0.5 0.8 2 0 0 0.3 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition 0.5 0.5 0.8 2 0 0 0.3 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition 0.5 0.5 0.8 2 0 0 0.3 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force

execute at @s[tag=red] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=Blue,tag=!dead,dx=0,dy=0,dz=0,limit=1] run function rauch:game/core/ability/zarzahn/r/hit
execute at @s[tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=Red,tag=!dead,dx=0,dy=0,dz=0,limit=1] run function rauch:game/core/ability/zarzahn/r/hit
execute at @s unless block ^ ^ ^0.32 #nonsolid run kill @s

execute at @s[scores={click=20..}] run kill @s
