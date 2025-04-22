execute at @s run place template rauch:cherry00 ~ ~ ~
execute at @s run place template rauch:cherry10 ~48 ~ ~
execute at @s run place template rauch:cherry01 ~ ~48 ~
execute at @s run place template rauch:cherry11 ~48 ~48 ~

#fillbiome
execute at @s run fillbiome ~ ~ ~ ~92 ~3 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~4 ~ ~92 ~7 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~8 ~ ~92 ~11 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~12 ~ ~92 ~15 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~16 ~ ~92 ~19 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~20 ~ ~92 ~23 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~24 ~ ~92 ~27 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~28 ~ ~92 ~31 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~32 ~ ~92 ~35 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~36 ~ ~92 ~39 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~40 ~ ~92 ~43 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~44 ~ ~92 ~47 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~48 ~ ~92 ~51 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~52 ~ ~92 ~55 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~56 ~ ~92 ~59 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~60 ~ ~92 ~63 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~64 ~ ~92 ~67 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~68 ~ ~92 ~71 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~72 ~ ~92 ~75 ~47 minecraft:cherry_grove
execute at @s run fillbiome ~ ~76 ~ ~92 ~79 ~47 minecraft:cherry_grove

execute store result score t_map_count temp run data get storage map_data maps
execute if score t_map_count temp matches 8.. run tag @s add temp
execute as @s[tag=temp] run tellraw @s {"text":"Could not automatically setup map","color":"red"}
execute as @s[tag=!temp] run function rauch:settings/spawn_map/cherry/setup

scoreboard players reset t_map_count temp
clear @s minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
tag @s remove temp
