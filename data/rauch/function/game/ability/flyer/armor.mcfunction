item replace entity @s armor.chest with elytra[\
  item_name={"text":"Cool Elytra"},\
  damage=432,\
  rarity=uncommon,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["enchantments"]},\
  !minecraft:attribute_modifiers\
] 1

execute as @s unless score @s elytra matches 1.. unless score @s hack matches 1.. run item replace entity @s armor.chest with elytra[\
  item_name={"text":"Cool Elytra"},\
  unbreakable={},\
  rarity=uncommon,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]},\
  !minecraft:attribute_modifiers\
] 1