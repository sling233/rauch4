scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust 0.3 0.7 0.2 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/core/ability/hacker/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust 0.3 0.7 0.2 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/core/ability/hacker/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust 0.3 0.7 0.2 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/core/ability/hacker/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust 0.3 0.7 0.2 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/core/ability/hacker/r/detect


execute at @s[scores={click=20..}] run kill @s
