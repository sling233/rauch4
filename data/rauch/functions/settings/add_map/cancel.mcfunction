kill @e[type=armor_stand,tag=map,tag=adding]
tag @s remove addmap
clear @s
scoreboard players reset @s mapId
scoreboard players reset @s click
tag @s add lobby
tellraw @s {"text":"Canceled","color":"yellow"}
