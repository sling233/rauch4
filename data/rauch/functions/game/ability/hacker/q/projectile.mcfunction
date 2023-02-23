execute at @s run particle minecraft:dust 0.2 0.7 0.2 1 ~ ~ ~ 0.01 0.01 0.01 1 7 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ~ ~ ~ 0.2 0.2 0.2 1 5 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ~ ~ ~ 0.2 0.2 0.2 1 5 force

execute as @s[nbt={OnGround:1b}] at @s run function rauch:game/ability/hacker/q/land
