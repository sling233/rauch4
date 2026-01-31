scoreboard players add @s click 1

execute at @s run tp @s ^ ^ ^0.42
#execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute at @s run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.05 4 force
#execute at @s run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.02 1 force
execute at @s run particle dust_color_transition{from_color:[1.0,0.4,0.4],scale:1,to_color:[0.2,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute at @s run particle dust_color_transition{from_color:[1.0,0.8,0.4],scale:1,to_color:[0.2,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute at @s run particle dust{color:[1.0,0.8,0.2],scale:1} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute as @s[tag=!hit] run function rauch:game/kits/wokkaman/q/detect

execute at @s run tp @s ^ ^ ^0.42
#execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute at @s run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.05 4 force
#execute at @s run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.02 1 force
execute at @s run particle dust_color_transition{from_color:[1.0,0.4,0.4],scale:1,to_color:[0.2,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute at @s run particle dust_color_transition{from_color:[1.0,0.8,0.4],scale:1,to_color:[0.2,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute at @s run particle dust{color:[1.0,0.8,0.2],scale:1} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute as @s[tag=!hit] run function rauch:game/kits/wokkaman/q/detect

execute at @s run tp @s ^ ^ ^0.42
#execute at @s run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.02 2 force
execute at @s run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.05 4 force
#execute at @s run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.02 1 force
execute at @s run particle dust_color_transition{from_color:[1.0,0.4,0.4],scale:1,to_color:[0.2,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute at @s run particle dust_color_transition{from_color:[1.0,0.8,0.4],scale:1,to_color:[0.2,0.0,0.0]} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute at @s run particle dust{color:[1.0,0.8,0.2],scale:1} ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute as @s[tag=!hit] run function rauch:game/kits/wokkaman/q/detect


execute at @s[scores={click=35..},tag=!hit] run function rauch:game/kits/wokkaman/q/explode
