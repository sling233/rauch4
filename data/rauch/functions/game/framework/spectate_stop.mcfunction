gamemode adventure
clear @s
tag @s add lobby
tag @s remove spectator
execute at @e[type=armor_stand,tag=main] run tp @s ~ ~-20 ~
tellraw @s {"text":"Stopped spectating the game","color":"yellow"}
