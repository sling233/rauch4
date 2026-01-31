scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.25
execute at @s run particle minecraft:dust_color_transition{from_color:[0.7,0.0,0.3],scale:1,to_color:[0,0,0]} ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[tag=!hit] run function rauch:game/kits/bolt/r/detect

execute at @s run tp @s ^ ^ ^0.25
execute at @s run particle minecraft:dust_color_transition{from_color:[0.7,0.0,0.3],scale:1,to_color:[0,0,0]} ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[tag=!hit] run function rauch:game/kits/bolt/r/detect

execute at @s run tp @s ^ ^ ^0.25
execute at @s run particle minecraft:dust_color_transition{from_color:[0.7,0.0,0.3],scale:1,to_color:[0,0,0]} ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[tag=!hit] run function rauch:game/kits/bolt/r/detect

execute at @s[scores={click=18..},tag=!hit] at @s run function rauch:game/kits/bolt/r/explode
