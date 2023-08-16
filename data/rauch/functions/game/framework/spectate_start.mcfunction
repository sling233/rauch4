gamemode spectator
clear @s
tag @s remove lobby
tag @s remove queue
team join Spectator @s
tag @s add spectator
execute store result score @s spectate_stop run data get entity @s recipeBook.isGuiOpen
execute at @e[type=marker,tag=ce,tag=map] run tp @s ~ ~-18 ~
tellraw @s {"text":"Spectating the current game. To return to the lobby, open your inventory and click the recipe book (minecraft is weird, sorry)","color":"yellow"}
