data modify entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] CustomName set from entity @s Inventory[{Slot:0b}].tag.pages[0]
tellraw @p [{"text":"Added Map \"","color":"green"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1]","interpret":true},{"text":"\" with internal id of "},{"score":{"name":"@e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1]","objective":"mapId"},"color":"light_purple"}]
tag @e[type=armor_stand,tag=map,tag=adding] remove adding
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tag @s remove addmap
clear @s
scoreboard players reset @s mapId
scoreboard players reset @s click
tag @s add lobby
