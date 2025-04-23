kill @e[type=armor_stand,tag=flag]
data merge entity @s {Silent:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:white_banner",Count:1b}}}
tag @s add flag
team join Flag @s
scoreboard players set @s flag_spawn_delay 0
data modify entity @s Pos set from storage map_data active.center
execute at @s run tp @s ~ ~-20 ~
execute at @s facing entity @e[type=marker,tag=map,tag=t1] feet run tp @s ~ ~ ~ ~ 0
effect give @s minecraft:glowing 1000000 0
