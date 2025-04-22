execute at @s run place template rauch:mork1 ~ ~ ~
execute at @s run place template rauch:mork2 ~48 ~ ~
execute at @s align xyz run fill ~34.5 ~8 ~17.5 ~30.5 ~8 ~22.5 big_dripleaf
execute at @s align xyz run fill ~44.5 ~8 ~9.5 ~48.5 ~8 ~4.5 big_dripleaf[facing=south]

execute store result score t_map_count temp run data get storage map_data maps
execute if score t_map_count temp matches 8.. run tag @s add temp
execute as @s[tag=temp] run tellraw @s {"text":"Could not automatically setup map","color":"red"}
execute as @s[tag=!temp] run function rauch:settings/spawn_map/mork/setup

scoreboard players reset t_map_count temp
clear @s minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
tag @s remove temp
