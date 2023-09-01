gamemode spectator
clear @s
tag @s remove lobby
tag @s remove queue
team join Spectator @s
tag @s add spectator
execute store result score @s spectate_stop run data get entity @s recipeBook.isGuiOpen
execute at @e[type=marker,tag=ce,tag=map] run tp @s ~ ~-18 ~
tellraw @s {"text":"Spectating the current game. To return to the lobby, open your inventory and click the recipe book (minecraft is weird, sorry)","color":"yellow"}
tag @a[tag=spectator] add game
execute if score Global mode matches 4 run bossbar set flag_location players @a[tag=game]
execute if score Global mode matches 1 run bossbar set center_control players @a[tag=game]
tag @a[tag=spectator] remove game
