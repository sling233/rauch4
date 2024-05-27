execute at @s run place template rauch:mork1 ~ ~ ~
execute at @s run place template rauch:mork2 ~48 ~ ~
execute at @s align xyz run fill ~33.5 ~8 ~16.5 ~29.5 ~8 ~21.5 big_dripleaf
execute at @s align xyz run fill ~43.5 ~8 ~8.5 ~47.5 ~8 ~3.5 big_dripleaf[facing=south]

scoreboard objectives add t_map_count dummy
execute store result score Global t_map_count run data get storage map_data maps
execute if score Global t_map_count matches 8.. run tag @s add temp
execute as @s[tag=temp] run tellraw @s {"text":"Could not automatically setup map","color":"red"}
execute as @s[tag=!temp] run function rauch:settings/spawn_map/mork/setup

scoreboard objectives remove t_map_count
clear @s minecraft:written_book[item_name='{"color":"yellow","text":"Settings"}']
tag @s remove temp
