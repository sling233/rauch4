# as flag
kill @e[type=armor_stand,tag=flag]
data merge entity @s {Silent:1b,Marker:1b,Invisible:1b}
tag @s add flag
item replace entity @s armor.head with white_banner
scoreboard players operation @s flag_spawn_delay = Global flag_spawn_delay

execute facing entity @e[type=marker,tag=maxline,tag=red,limit=1] feet run rotate @s ~ 0
effect give @s minecraft:glowing infinite 0

team join Flag @s
team modify Flag color yellow
