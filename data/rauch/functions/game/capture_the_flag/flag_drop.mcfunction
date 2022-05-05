function rauch:game/capture_the_flag/spawn_flag
effect give @e[type=minecraft:armor_stand,tag=flag] minecraft:glowing 1000000 0

attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-3-0
tag @s remove flagPickedUp

effect clear @s minecraft:glowing

scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000

scoreboard players reset @s hack
function rauch:game/core/mechanics/hackend
