execute at @s align xyz run summon area_effect_cloud ~0.5 ~20 ~0.5 {Tags:["setup","map"]}
data modify entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] ArmorItems[3].tag.Cords[2] set from entity @e[type=area_effect_cloud,tag=map,tag=setup,limit=1] Pos

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{CustomModelData:202,display:{Name:'{"text":"Center","color":"yellow","italic":false}'},Enchantments:[{}],Pos:[0]}
#tellraw @s {"text":"----------------------------------------------------", "color":"yellow"}
tellraw @s [{"text":"Center Location set to: ", "color":"yellow"},{"nbt":"Pos[0]","entity":"@e[type=area_effect_cloud,tag=map,tag=setup]","color":"light_purple"},{"text":", "},{"nbt":"Pos[1]","entity":"@e[type=area_effect_cloud,tag=map,tag=setup]","color":"light_purple"},{"text":", "},{"nbt":"Pos[2]","entity":"@e[type=area_effect_cloud,tag=map,tag=setup]","color":"light_purple"}]
#tellraw @s {"text":"----------------------------------------------------", "color":"yellow"}

kill @e[type=area_effect_cloud,tag=setup,tag=map]
scoreboard players reset @s click
