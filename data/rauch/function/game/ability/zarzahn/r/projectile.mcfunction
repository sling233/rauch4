scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition{from_color:[0.8,0.5,0.5],scale:2,to_color:[0.3,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition{from_color:[0.5,0.5,0.8],scale:2,to_color:[0.0,0.0,0.3]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute as @s[tag=!hit] run function rauch:game/ability/zarzahn/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition{from_color:[0.8,0.5,0.5],scale:2,to_color:[0.3,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition{from_color:[0.5,0.5,0.8],scale:2,to_color:[0.0,0.0,0.3]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute as @s[tag=!hit] run function rauch:game/ability/zarzahn/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition{from_color:[0.8,0.5,0.5],scale:2,to_color:[0.3,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition{from_color:[0.5,0.5,0.8],scale:2,to_color:[0.0,0.0,0.3]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute as @s[tag=!hit] run function rauch:game/ability/zarzahn/r/detect

execute at @s run tp @s ^ ^ ^0.3
execute at @s[tag=red] run particle minecraft:dust_color_transition{from_color:[0.8,0.5,0.5],scale:2,to_color:[0.3,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition{from_color:[0.5,0.5,0.8],scale:2,to_color:[0.0,0.0,0.3]} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute as @s[tag=!hit] run function rauch:game/ability/zarzahn/r/detect


execute at @s[scores={click=20..}] run kill @s
