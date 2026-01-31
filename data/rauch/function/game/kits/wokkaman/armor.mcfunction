item replace entity @s armor.legs with golden_leggings[\
  item_name={"text":"Ninjahose"},\
  rarity=epic,\
  unbreakable={},\
  enchantments={"minecraft:binding_curse":1,"minecraft:swift_sneak":5},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]},\
  !minecraft:attribute_modifiers\
] 1

item replace entity @s armor.feet with leather_boots[\
  item_name={"text":"Schnellschuhe"},\
  dyed_color=3678989,\
  rarity=epic,\
  unbreakable={},\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","dyed_color","enchantments"]},\
  !minecraft:attribute_modifiers\
] 1

item replace entity @s armor.chest with elytra[\
  item_name={"text":"Fliegflügel"},\
  damage=432,\
  rarity=epic,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["enchantments"]},\
  !minecraft:attribute_modifiers\
] 1

execute as @s unless score @s elytra matches 1.. unless score @s hack matches 1.. run item replace entity @s armor.chest with elytra[\
  item_name={"text":"Fliegflügel"},\
  unbreakable={},\
  rarity=epic,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]},\
  !minecraft:attribute_modifiers\
] 1
