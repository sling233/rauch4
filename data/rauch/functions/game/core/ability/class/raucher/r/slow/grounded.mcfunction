execute at @s[tag=red] as @a[team=Blue,tag=!dead,distance=..3.1] run effect give @s minecraft:slowness 1 4 true
execute at @s[tag=blu] as @a[team=Red,tag=!dead,distance=..3.1] run effect give @s minecraft:slowness 1 4 true


execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s run tp @s ~ ~ ~ ~10 0
