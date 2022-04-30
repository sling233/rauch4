execute facing entity @s feet run tp @p ^ ^ ^0.7
effect give @p minecraft:slow_falling 1 3 true

execute as @s[distance=..2.5] run tag @p add temp
execute if entity @p[tag=temp] run function rauch:game/core/ability/class/zarzahn/r/unhook
