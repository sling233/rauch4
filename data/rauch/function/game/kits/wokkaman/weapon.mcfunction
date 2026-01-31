execute if score @s wokkaman_weapon matches 0 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:attackeschwert",\
    item_name={"text":"Attackeschwert"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 1 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:plastikschwert",\
    item_name={"text":"Plastikschwert"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 2 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:angriffsaxt",\
    item_name={"text":"Angriffsaxt"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 3 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:kloppstock",\
    item_name={"text":"Kloppstock"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
execute if score @s wokkaman_weapon matches 4 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_model="rauch:piksspeer",\
    item_name={"text":"Piksspeer"},\
    rarity=epic,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1

tellraw @s ["Error when trying to give wokkaman weapon to ",{"selector":"@s"},": unimplemented weapon id ",{"score":{"name":"@s","objective":"kit"}}]
