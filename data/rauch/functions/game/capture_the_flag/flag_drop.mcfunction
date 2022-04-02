execute if score Global mapId matches 2 run summon armor_stand 95 24 10 {Silent:1b,Marker:1b,Invisible:1b,Tags:["flag"],ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}

effect give @e[type=minecraft:armor_stand,tag=flag] minecraft:glowing 1000000 0

attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-3-0
tag @s remove flagPickedUp

effect clear @s minecraft:glowing
#effect clear @s minecraft:jump_boost

scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000

scoreboard players reset @s hack
function rauch:game/core/mechanics/hackend
