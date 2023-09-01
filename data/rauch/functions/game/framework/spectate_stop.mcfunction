gamemode adventure
clear @s
tag @s add lobby
tag @s remove spectator

execute at @e[type=armor_stand,tag=main] run tp @s ~ ~-20 ~
tellraw @s {"text":"Stopped spectating the game","color":"yellow"}
tag @a[tag=spectator] add game
execute if score Global mode matches 4 run bossbar set flag_location players @a[tag=game]
execute if score Global mode matches 1 run bossbar set center_control players @a[tag=game]
tag @a[tag=spectator] remove game
