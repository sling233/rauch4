execute at @s run tp @s ^ ^ ^0.3
execute at @s unless block ~ ~ ~ #nonsolid run kill @s
execute at @s run particle dust 1 0 1 1 ~ ~ ~ 0 0 0 1 1 force

execute at @s[tag=red] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,team=Blue,limit=1,tag=!dead] run function rauch:game/core/ability/class/teleporter/r/hit
execute at @s[tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,team=Red,limit=1,tag=!dead] run function rauch:game/core/ability/class/teleporter/r/hit

scoreboard players add @s click 1
execute as @s[scores={click=..4},tag=!hit] run function rauch:game/core/ability/class/teleporter/r/projectile

scoreboard players reset @s click
