# flags
execute as @s[tag=flagPickedUp,team=Red] run return run item replace entity @s armor.head with red_banner[\
  item_name={"text":"Flag"},\
  rarity=uncommon,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]}\
] 1

execute as @s[tag=flagPickedUp,team=Blue] run return run item replace entity @s armor.head with blue_banner[\
  item_name={"text":"Flag"},\
  rarity=uncommon,\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]}\
] 1

function rauch:game/mechanics/set_helmet