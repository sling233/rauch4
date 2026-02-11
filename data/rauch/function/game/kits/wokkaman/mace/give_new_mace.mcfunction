# $(max_damage) and $(damage)
clear @s mace

$item replace entity @s hotbar.2 with minecraft:mace[\
    item_name="Großhammer",\
    rarity=epic,\
    enchantments={"minecraft:wind_burst":1,"minecraft:density":5,"rauch:hit_detect":1},\
    max_damage=$(max_damage),\
    damage=$(damage),\
    tooltip_display={hidden_components:["enchantments","attribute_modifiers"]},\
    attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value"}]\
] 1