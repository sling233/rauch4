scoreboard players add @s click 1
execute at @s[tag=red] as @a[team=Blue,tag=game,tag=!dead,distance=..3.6] run effect give @s minecraft:slowness 1 4 true
execute at @s[tag=blu] as @a[team=Red,tag=game,tag=!dead,distance=..3.6] run effect give @s minecraft:slowness 1 4 true

execute at @s[tag=red] as @a[team=Blue,tag=game,tag=!dead,distance=..3.6] run function rauch:game/ability/raucher/f/slow/debuff
execute at @s[tag=blu] as @a[team=Red,tag=game,tag=!dead,distance=..3.6] run function rauch:game/ability/raucher/f/slow/debuff


execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^ ^0.2 ^3.5 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^ ^0.2 ^3.5 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^ ^0.2 ^-3.5 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^ ^0.2 ^-3.5 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^3.5 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^3.5 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^-3.5 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^-3.5 ^0.2 ^ 0.05 0.05 0.05 1 1 force

execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^2.47 ^0.2 ^2.47 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^2.47 ^0.2 ^2.47 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^2.47 ^0.2 ^-2.47 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^2.47 ^0.2 ^-2.47 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^-2.47 ^0.2 ^-2.47 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^-2.47 ^0.2 ^-2.47 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.3 0 0 1 ^-2.47 ^0.2 ^2.47 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0 0 0.3 1 ^-2.47 ^0.2 ^2.47 0.05 0.05 0.05 1 1 force
execute at @s run tp @s ~ ~ ~ ~5 0
execute as @s[scores={click=80..}] run kill @s
