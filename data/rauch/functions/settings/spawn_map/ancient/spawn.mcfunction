execute at @s run place template rauch:ancient1 ~ ~ ~
execute at @s run place template rauch:ancient2 ~47 ~ ~
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=7}] run tag @s add temp
execute as @s[tag=temp] run tellraw @s {"text":"Could not automatically setup map","color":"red"}
execute as @s[tag=!temp] run function rauch:settings/spawn_map/ancient/setup
clear @a minecraft:written_book{title:"Settings"}
tag @s remove temp
