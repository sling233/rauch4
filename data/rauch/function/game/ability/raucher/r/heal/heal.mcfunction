execute at @s[tag=red] run particle minecraft:dust{color:[0.7,0.3,0.3],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 5 force
execute at @s[tag=blu] run particle minecraft:dust{color:[0.3,0.3,0.7],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 5 force

execute if predicate rauch:on_ground at @s run function rauch:game/ability/raucher/r/heal/land
