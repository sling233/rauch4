tag @s add addmap
tag @s remove lobby
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1

execute at @e[type=armor_stand,tag=main] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["adding","root","setup","map"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:0,Cords:[[na],[na]]}}]}
scoreboard players set Global mapId -1
function rauch:settings/add_map/counter
tag @s remove temp

execute as @e[type=armor_stand,tag=root,tag=map] if score @s mapId > Global mapId run tellraw @p {"text":"Map Ids are scuffed. Recalculate Map Ids","color":"red"}
scoreboard players operation @e[type=armor_stand,tag=map,tag=setup,limit=1] mapId = Global mapId

scoreboard players set @e[type=armor_stand,tag=map,tag=adding,tag=setup] mapParticle -1
scoreboard players set @e[type=armor_stand,tag=map,tag=adding,tag=setup] mapTime -1
tag @e[type=armor_stand,tag=map,tag=adding,tag=setup] remove setup
scoreboard players reset Global mapId

clear @s
