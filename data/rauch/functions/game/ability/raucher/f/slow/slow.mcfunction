execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ~ ~ ~ 0.1 0.1 0.1 1 5 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ~ ~ ~ 0.1 0.1 0.1 1 5 force

execute as @s[nbt={OnGround:1b}] at @s run function rauch:game/ability/raucher/f/slow/land
