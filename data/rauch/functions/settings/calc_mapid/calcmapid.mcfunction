scoreboard players set Global mapId 0
execute as @e[type=armor_stand,tag=map,tag=root] run function rauch:settings/calc_mapid/setscore
scoreboard players reset Global mapId

playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @s {"text":"Reclaculated Map Ids as follows:","color":"green"}
execute at @s as @e[type=armor_stand,tag=map,tag=root] run tellraw @p [{"text":"Id: ","color":"green"},{"score":{"name":"@s","objective":"mapId"},"color":"light_purple"},{"text":" | Name: ","color":"green"},{"nbt":"CustomName","entity":"@s","interpret":true,"color":"light_purple"}]
execute unless entity @e[type=armor_stand,tag=map,tag=root] run tellraw @p {"text":"-> No Maps","color":"gray"}
clear @a minecraft:written_book{title:"Settings"}
