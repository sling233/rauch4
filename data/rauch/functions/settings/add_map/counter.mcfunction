scoreboard players add Global mapId 1
tag @s remove temp
execute at @s as @e[type=armor_stand,tag=map,tag=root] if score @s mapId = Global mapId run tag @p add temp
execute as @s[tag=temp] run function rauch:settings/add_map/counter
