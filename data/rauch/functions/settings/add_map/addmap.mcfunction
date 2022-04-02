execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=7}] run tag @s add temp
execute as @s[tag=!temp] run function rauch:settings/add_map/addmap1
execute as @s[tag=temp] run tellraw @s {"text":"Maximum Number of Maps reached.","color":"red"}
execute as @s[tag=temp] run playsound minecraft:block.chain.break master @s ~ ~ ~ 1
execute as @s[tag=temp] run tag @s remove temp
