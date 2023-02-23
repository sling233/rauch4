scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle dust 1 0 1 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/ability/teleporter/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle dust 1 0 1 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/ability/teleporter/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle dust 1 0 1 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/ability/teleporter/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle dust 1 0 1 1 ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!hit] run function rauch:game/ability/teleporter/r/detect


execute at @s[scores={click=18..}] run kill @s
