data remove storage map_data maps[0]
tag @s remove addmap
clear @s
scoreboard players reset @s click
scoreboard players reset Global mapParticle
tag @s add lobby
tellraw @s {"text":"Canceled","color":"yellow"}
