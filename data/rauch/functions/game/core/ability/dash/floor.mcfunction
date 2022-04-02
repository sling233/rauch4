execute at @s unless block ~ ~-1 ~ air run tag @s add floor
execute at @s[tag=!floor] run tp @s ~ ~-1 ~
execute as @s[tag=!floor] run function rauch:game/core/ability/dash/floor
