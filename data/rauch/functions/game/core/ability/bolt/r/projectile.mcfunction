scoreboard players add @s click 1
execute at @s run tp @s ^ ^ ^0.20
execute at @s run particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute at @s run tp @s ^ ^ ^0.20
execute at @s run particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute at @s run tp @s ^ ^ ^0.20
execute at @s run particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 0.2 0.2 0.2 0.1 10 force

execute at @s[team=red] unless score @s click matches 18.. positioned ~-1 ~-1 ~-1 if entity @a[team=Blue,tag=!dead,dx=1,dy=1,dz=1] at @s run function rauch:game/core/ability/bolt/r/explode
execute at @s[team=blu] unless score @s click matches 18.. positioned ~-1 ~-1 ~-1 if entity @a[team=Red,tag=!dead,dx=1,dy=1,dz=1] at @s run function rauch:game/core/ability/bolt/r/explode
execute at @s[scores={click=18..}] run function rauch:game/core/ability/bolt/r/explode
execute at @s[scores={click=..17}] unless block ^ ^ ^0.5 #nonsolid run function rauch:game/core/ability/bolt/r/explode
