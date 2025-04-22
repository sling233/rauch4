scoreboard players add @s click 1

scoreboard players set 10 const 10
execute store result score t_mod10 temp run time query gametime
scoreboard players operation t_mod10 temp %= 10 const
# rauchers cant heal themselves
execute if score t_mod10 temp matches 0 at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run scoreboard players add @s heal 1
execute if score t_mod10 temp matches 0 at @s[tag=blu] as @a[team=Blue,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run scoreboard players add @s heal 1
# rauchers can heal themselves
execute if score t_mod10 temp matches 0 at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1] run scoreboard players add @s heal 1
execute if score t_mod10 temp matches 0 at @s[tag=blu] as @a[team=Blue,tag=game,tag=!dead,distance=..3.1] run scoreboard players add @s heal 1
scoreboard players reset t_mod10 temp
execute at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 at @s run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 1 1
execute at @s[tag=blu] as @a[team=Blue,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 at @s run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 1 1


execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force

execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^-2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^-2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ^-2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ^-2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force

execute at @s run tp @s ~ ~ ~ ~5 0
execute as @s[scores={click=160..}] run kill @s
