scoreboard players add @s click 1
execute at @s run particle minecraft:dust_color_transition{from_color:[0.2,0.8,0.2],scale:1,to_color:[0.1,0.2,0.1]} ~ ~0.2 ~ 0.1 0.2 0.1 1 5 force
execute at @s[tag=red] run particle minecraft:dust_color_transition{from_color:[0.8,0.2,0.2],scale:1,to_color:[0.2,0.1,0.1]} ~ ~0.6 ~ 0.05 0.05 0.05 1 2 force
execute at @s[tag=blu] run particle minecraft:dust_color_transition{from_color:[0.2,0.2,0.8],scale:1,to_color:[0.1,0.1,0.2]} ~ ~0.6 ~ 0.05 0.05 0.05 1 2 force
execute as @s[scores={click=18..}] run function rauch:game/ability/hacker/q/hack
