scoreboard players add @s click 1

scoreboard objectives add mod9 dummy
scoreboard players operation Global mod9 = @s click
scoreboard players operation Global mod9 %= Global 9
execute if score Global mod9 matches 0 at @s[tag=red] as @a[team=Red,tag=game,tag=!dead,distance=..3.1,nbt=!{ActiveEffects:[{Id:10b}]}] run execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:6,Age:4,Effects:[{Id:10b,Amplifier:127b,Duration:1,ShowParticles:0b}]}
execute if score Global mod9 matches 0 at @s[tag=blu] as @a[team=Blue,tag=game,tag=!dead,distance=..3.1,nbt=!{ActiveEffects:[{Id:10b}]}] run execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:6,Age:4,Effects:[{Id:10b,Amplifier:127b,Duration:1,ShowParticles:0b}]}
scoreboard objectives remove mod9

execute at @s[tag=red] at @a[team=Red,tag=game,tag=!dead,distance=..3.1] run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 1 1
execute at @s[tag=blu] at @a[team=Blue,tag=game,tag=!dead,distance=..3.1] run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 1 1


execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^ ^0.2 ^3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^ ^0.2 ^-3 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^-3 ^0.2 ^ 0.05 0.05 0.05 1 1 force

execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^-2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^-2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^2.12 ^0.2 ^-2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=red] run particle minecraft:dust 0.7 0.2 0.2 1 ^-2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force
execute at @s[tag=blu] run particle minecraft:dust 0.2 0.2 0.7 1 ^-2.12 ^0.2 ^2.12 0.05 0.05 0.05 1 1 force

execute at @s run tp @s ~ ~ ~ ~5 0
execute as @s[scores={click=130..}] run kill @s
