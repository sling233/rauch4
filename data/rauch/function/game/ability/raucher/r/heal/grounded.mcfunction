scoreboard players add @s click 1

scoreboard players set 15 const 15
execute store result score t_mod15 temp run time query gametime
scoreboard players operation t_mod15 temp %= 15 const

execute if score mod15 temp matches 0 at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:1,show_particles:0b}]}}
execute if score mod15 temp matches 0 at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:5,show_particles:0b}]}}
execute if score mod15 temp matches 0 at @s[tag=blu] as @a[team=Blue,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:1,show_particles:0b}]}}
scoreboard players reset t_mod15 temp
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
