#fill structure void (to stop water and stuff from flowing)
execute at @s run fill ~ ~0 ~ ~66 ~6 ~67 minecraft:structure_void
execute at @s run fill ~ ~7 ~ ~66 ~13 ~67 minecraft:structure_void
execute at @s run fill ~ ~14 ~ ~66 ~20 ~67 minecraft:structure_void
execute at @s run fill ~ ~21 ~ ~66 ~27 ~67 minecraft:structure_void
execute at @s run fill ~ ~28 ~ ~66 ~34 ~67 minecraft:structure_void
execute at @s run fill ~ ~35 ~ ~66 ~41 ~67 minecraft:structure_void
execute at @s run fill ~ ~42 ~ ~66 ~48 ~67 minecraft:structure_void
execute at @s run fill ~ ~49 ~ ~66 ~55 ~67 minecraft:structure_void
execute at @s run fill ~ ~56 ~ ~66 ~62 ~67 minecraft:structure_void
execute at @s run fill ~ ~63 ~ ~66 ~69 ~67 minecraft:structure_void
execute at @s run fill ~ ~70 ~ ~66 ~76 ~67 minecraft:structure_void
execute at @s run fill ~ ~77 ~ ~66 ~83 ~67 minecraft:structure_void
execute at @s run fill ~ ~84 ~ ~66 ~90 ~67 minecraft:structure_void
execute at @s run fill ~ ~91 ~ ~66 ~96 ~67 minecraft:structure_void

#spawn map
execute at @s run place template rauch:wcity111 ~48 ~48 ~48
execute at @s run place template rauch:wcity110 ~48 ~48 ~
execute at @s run place template rauch:wcity101 ~48 ~ ~48
execute at @s run place template rauch:wcity100 ~48 ~ ~
execute at @s run place template rauch:wcity011 ~ ~48 ~48
execute at @s run place template rauch:wcity010 ~ ~48 ~
execute at @s run place template rauch:wcity001 ~ ~ ~48
execute at @s run place template rauch:wcity000 ~ ~ ~

#set some dripleaves
execute at @s run setblock ~45 ~13 ~46 minecraft:air
execute at @s run setblock ~45 ~14 ~46 minecraft:big_dripleaf[facing=west]
execute at @s run setblock ~49 ~13 ~46 minecraft:air
execute at @s run setblock ~49 ~14 ~46 minecraft:big_dripleaf[facing=south]

#fillbiome later

execute store result score t_map_count temp run data get storage map_data maps
execute if score t_map_count temp matches 8.. run tag @s add temp
execute as @s[tag=temp] run tellraw @s {"text":"Could not automatically setup map","color":"red"}
execute as @s[tag=!temp] run function rauch:settings/spawn_map/wcity/setup

scoreboard players reset t_map_count temp
clear @s minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
tag @s remove temp
