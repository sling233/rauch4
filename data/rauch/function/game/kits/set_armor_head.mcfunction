# wokkaman helmet
execute as @s[tag=!flagPickedUp,scores={kit=9,wokkaman_helmet=1..}] run item replace entity @s armor.head with iron_helmet[\
  item_name={"text":"Schlauhut"},\
  item_model="minecraft:turtle_helmet",\
  rarity=epic,\
  unbreakable={},\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","dyed_color","enchantments","trim"]},\
  minecraft:equippable={slot:"head",asset_id:"minecraft:turtle_scute"},\
  !minecraft:attribute_modifiers\
] 1
execute as @s[tag=!flagPickedUp,scores={kit=9,wokkaman_helmet=0}] run item replace entity @s armor.head with dragon_head[\
  item_name={"text":"Idk"},\
  rarity=epic,\
  unbreakable={},\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]},\
  !minecraft:attribute_modifiers\
] 1

# normal kits
execute as @s[tag=!flagPickedUp] unless score @s kit matches 9 run item replace entity @s armor.head with warped_fungus_on_a_stick[\
  item_name={"text":"Pssssst"},\
  rarity=uncommon,\
  item_model="rauch:invisible",\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hide_tooltip:false},\
] 1


# flags
execute as @s[tag=flagPickedUp,team=Red] run item replace entity @s armor.head with red_banner[\
  item_name={"text":"Flag"},\
  rarity=uncommon,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]}\
] 1

execute as @s[tag=flagPickedUp,team=Blue] run item replace entity @s armor.head with blue_banner[\
  item_name={"text":"Flag"},\
  rarity=uncommon,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]}\
] 1

