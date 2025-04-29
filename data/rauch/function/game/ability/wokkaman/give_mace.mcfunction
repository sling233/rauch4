execute store result score t_mace_count temp run clear @s minecraft:mace 0
execute if score t_mace_count temp < @s wokkaman_max_mace_count run give @s minecraft:mace[\
    item_name="Großhammer",\
    rarity=epic,\
    enchantments={"minecraft:wind_burst":1,"minecraft:density":5},\
    damage=499,\
    tooltip_display={hidden_components:["enchantments","attribute_modifiers"]},\
    attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value"}]\
] 1

scoreboard players reset t_mace_count temp
