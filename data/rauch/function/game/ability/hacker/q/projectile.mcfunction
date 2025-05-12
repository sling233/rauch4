execute at @s run particle minecraft:dust{color:[0.2,0.7,0.2],scale:1} ~ ~ ~ 0.01 0.01 0.01 1 7 force
execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.2,0.2],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 5 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.2,0.2,0.7],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 5 force

execute if predicate rauch:on_ground at @s run function rauch:game/ability/hacker/q/land
