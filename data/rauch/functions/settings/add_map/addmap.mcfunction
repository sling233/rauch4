execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=7}] run tag @s add temp
execute if entity @a[tag=addmap] run tag @s add temp2
execute as @s[tag=!temp,tag=!temp2] run function rauch:settings/add_map/addmap1
execute as @s[tag=temp] run tellraw @s {"text":"Maximum Number of Maps reached","color":"red"}
execute as @s[tag=temp2] run tellraw @s {"text":"Only one Admin at a time can add a map","color":"red"}
execute as @s[tag=!addmap] run playsound minecraft:block.chain.break master @s ~ ~ ~ 1
tag @s remove temp
tag @s remove temp2
