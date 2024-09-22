scoreboard objectives add number_of_maps dummy
execute store result score Global number_of_maps run data get storage map_data maps
execute if score Global number_of_maps matches 8.. run tag @s add temp

execute if entity @a[tag=addmap] run tag @s add temp2
execute if score Global game_running matches 1 run tag @s add temp3
execute as @s[tag=!temp,tag=!temp2,tag=!temp3] run function rauch:settings/add_map/initialize

execute as @s[tag=temp] run tellraw @s {"text":"Maximum Number of Maps reached","color":"red"}
execute as @s[tag=temp2] run tellraw @s {"text":"Only one Admin at a time can add a map","color":"red"}
execute as @s[tag=temp3] run tellraw @s {"text":"Cannot add a map while a game is running","color":"red"}
execute as @s[tag=!addmap] run playsound minecraft:block.chain.break master @s ~ ~ ~ 1

scoreboard objectives remove number_of_maps
tag @s remove temp
tag @s remove temp2
tag @s remove temp3