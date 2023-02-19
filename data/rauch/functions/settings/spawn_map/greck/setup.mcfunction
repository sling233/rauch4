execute at @e[type=armor_stand,tag=main] run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Greck"}',NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["root","setup","map"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:0,Cords:[[na],[na],[na]]}}]}
scoreboard players set Global mapId -1
function rauch:settings/add_map/counter
tag @s remove temp

scoreboard players operation @e[type=armor_stand,tag=map,tag=setup,limit=1] mapId = Global mapId
scoreboard players set @e[type=armor_stand,tag=map,tag=setup] mapParticle -1
scoreboard players set @e[type=armor_stand,tag=map,tag=setup] mapTime -1

execute at @s align xyz run summon marker ~3.5 ~29 ~11.5 {Tags:["mapsetup","red"]}
execute at @s align xyz run summon marker ~42.5 ~24 ~11.5 {Tags:["mapsetup","cen"]}
execute at @s align xyz run summon marker ~81.5 ~29 ~11.5 {Tags:["mapsetup","blu"]}
data modify entity @e[type=armor_stand,tag=map,tag=root,tag=setup,limit=1] ArmorItems[3].tag.Cords[0] set from entity @e[type=marker,tag=mapsetup,tag=red,limit=1] Pos
data modify entity @e[type=armor_stand,tag=map,tag=root,tag=setup,limit=1] ArmorItems[3].tag.Cords[1] set from entity @e[type=marker,tag=mapsetup,tag=blu,limit=1] Pos
data modify entity @e[type=armor_stand,tag=map,tag=root,tag=setup,limit=1] ArmorItems[3].tag.Cords[2] set from entity @e[type=marker,tag=mapsetup,tag=cen,limit=1] Pos

kill @e[type=marker,tag=mapsetup]

tag @e[type=armor_stand,tag=map,tag=setup] remove setup
scoreboard players reset Global mapId
