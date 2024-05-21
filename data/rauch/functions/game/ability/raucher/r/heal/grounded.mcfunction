scoreboard players add @s click 1

scoreboard objectives add 15 dummy
scoreboard players set Global 15 15
scoreboard objectives add mod15 dummy
execute store result score Global mod15 run time query gametime
scoreboard players operation Global mod15 %= Global 15

execute if score Global mod15 matches 0 at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:1,show_particles:0b}]}}
execute if score Global mod15 matches 0 at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:5,show_particles:0b}]}}
execute if score Global mod15 matches 0 at @s[tag=blu] as @a[team=Blue,tag=game,tag=!dead,distance=..3.1] unless score @s kit matches 3 run execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:127,duration:1,show_particles:0b}]}}
scoreboard objectives remove mod15
scoreboard objectives remove 15
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
