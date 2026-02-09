execute unless score @s tele_invis matches 1.. run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_name={"text":"Teleporter's Sword"},\
    item_model="rauch:teleporter_sword",\
    rarity=rare,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    custom_data={weapon:1b},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1

item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[\
    item_name={"text":"Teleporter's Sword"},\
    item_model="rauch:teleporter_sword_invisible",\
    rarity=rare,\
    unbreakable={},\
    enchantments={"rauch:hit_detect":1},\
    custom_data={weapon:1b},\
    tooltip_display={hidden_components:["unbreakable"]}\
] 1
