execute at @s run place template rauch:greck1 ~ ~ ~
execute at @s run place template rauch:greck2 ~48 ~ ~

scoreboard objectives add t_map_count dummy
execute store result score Global t_map_count run data get storage map_data maps
execute if score Global t_map_count matches 8.. run tag @s add temp
execute as @s[tag=temp] run tellraw @s {"text":"Could not automatically setup map","color":"red"}
execute as @s[tag=!temp] run function rauch:settings/spawn_map/greck/setup

scoreboard objectives remove t_map_count
clear @s minecraft:written_book[item_name='{"color":"yellow","text":"Settings"}']
tag @s remove temp
