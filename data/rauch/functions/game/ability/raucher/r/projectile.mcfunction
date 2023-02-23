scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.32
execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute as @s[tag=!hit] run function rauch:game/ability/raucher/r/detect

execute at @s run tp @s ^ ^ ^0.32
execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute as @s[tag=!hit] run function rauch:game/ability/raucher/r/detect

execute at @s run tp @s ^ ^ ^0.32
execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute as @s[tag=!hit] run function rauch:game/ability/raucher/r/detect


execute at @s[scores={click=18..},tag=!hit] run function rauch:game/ability/raucher/r/explode
