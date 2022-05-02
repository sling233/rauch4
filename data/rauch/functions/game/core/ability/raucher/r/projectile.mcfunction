scoreboard players add @s click 1
execute at @s run tp @s ^ ^ ^0.32
execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute at @s run tp @s ^ ^ ^0.32
execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute at @s run tp @s ^ ^ ^0.32
execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force

execute at @s[team=red] unless score @s click matches 18.. if block ^ ^ ^0.5 #nonsolid positioned ~-1 ~-1 ~-1 if entity @a[team=Blue,tag=!dead,dx=1,dy=1,dz=1] at @s run function rauch:game/core/ability/raucher/r/explode
execute at @s[team=blu] unless score @s click matches 18.. if block ^ ^ ^0.5 #nonsolid positioned ~-1 ~-1 ~-1 if entity @a[team=Red,tag=!dead,dx=1,dy=1,dz=1] at @s run function rauch:game/core/ability/raucher/r/explode
execute at @s[scores={click=18..}] run function rauch:game/core/ability/raucher/r/explode
execute at @s[scores={click=..17}] unless block ^ ^ ^0.5 #nonsolid run function rauch:game/core/ability/raucher/r/explode
