execute if score @s wokkaman_weapon matches 0 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:attackeschwert",\
    item_name={"text":"Attackeschwert"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    custom_data={weapon:1b},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 1 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:plastikschwert",\
    item_name={"text":"Plastikschwert"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    custom_data={weapon:1b},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 2 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:angriffsaxt",\
    item_name={"text":"Angriffsaxt"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    custom_data={weapon:1b},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 3 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:kloppstock",\
    item_name={"text":"Kloppstock"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    custom_data={weapon:1b},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 4 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:piksspeer",\
    item_name={"text":"Piksspeer"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    custom_data={weapon:1b},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1

execute unless score @s wokkaman_weapon matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to give wokkaman weapon, weapon id unset"]
scoreboard players operation err temp = @s wokkaman_weapon
tellraw @a [{text:"",color:"red"},"Error when trying to give wokkaman weapon, unimplemented weapon id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp