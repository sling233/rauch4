execute as @s[tag=game] run return 0
execute as @s[tag=spectator] run return 0
execute as @s[tag=addmap] run return 0
tag @s add lobby
execute at @e[type=armor_stand,tag=main] run tp @s ~ ~-20 ~
execute at @e[type=armor_stand,tag=main] run spawnpoint @s ~ ~-20 ~
gamemode adventure @s
