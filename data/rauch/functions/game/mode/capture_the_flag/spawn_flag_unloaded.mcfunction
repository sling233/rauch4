kill @e[type=armor_stand,tag=flag]
data merge entity @s {Silent:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}
tag @s add flag
data modify entity @s Pos set from storage map_data active.center
execute at @s run tp @s ~ ~-20 ~
execute at @s run tp @s ~ ~ ~ 90 0
effect give @s minecraft:glowing 1000000 0
