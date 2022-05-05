scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.2
execute at @s run particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[tag=!hit] run function rauch:game/core/ability/bolt/r/detect

execute at @s run tp @s ^ ^ ^0.2
execute at @s run particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[tag=!hit] run function rauch:game/core/ability/bolt/r/detect

execute at @s run tp @s ^ ^ ^0.2
execute at @s run particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[tag=!hit] run function rauch:game/core/ability/bolt/r/detect


execute at @s[scores={click=18..}] run kill @s
