execute at @s[tag=red] as @a[team=Red,tag=!dead,distance=..3.1,nbt=!{ActiveEffects:[{Id:10b}]}] run effect give @s minecraft:regeneration 1 3 true
execute at @s[tag=blu] as @a[team=Blue,tag=!dead,distance=..3.1,nbt=!{ActiveEffects:[{Id:10b}]}] run effect give @s minecraft:regeneration 1 3 true

execute at @s[tag=red] as @a[team=Red,tag=!dead,distance=..3.1] run effect give @s minecraft:resistance 1 0 true
execute at @s[tag=blu] as @a[team=Blue,tag=!dead,distance=..3.1] run effect give @s minecraft:resistance 1 0 true

execute at @s[tag=red] at @a[team=Red,tag=!dead,distance=..3.1] run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 1 1
execute at @s[tag=blu] at @a[team=Blue,tag=!dead,distance=..3.1] run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 1 1


execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force

execute at @s run tp @s ~ ~ ~ ~10 0
