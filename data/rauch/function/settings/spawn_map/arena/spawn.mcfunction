execute at @s run place template rauch:arena1 ~ ~ ~
execute at @s run place template rauch:arena2 ~48 ~ ~

execute store result score t_map_count temp run data get storage map_data maps
execute if score t_map_count temp matches 8.. run tag @s add temp
execute as @s[tag=temp] run tellraw @s {"text":"Could not automatically setup map","color":"red"}
execute as @s[tag=!temp] run function rauch:settings/spawn_map/arena/setup

scoreboard players reset t_map_count temp
clear @s minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
tag @s remove temp
