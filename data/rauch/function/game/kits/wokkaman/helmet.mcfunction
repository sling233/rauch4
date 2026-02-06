execute if score @s wokkaman_helmet matches 1 run return run item replace entity @s armor.head with iron_helmet[\
  item_name={"text":"Schlauhut"},\
  item_model="minecraft:turtle_helmet",\
  rarity=epic,\
  unbreakable={},\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","dyed_color","enchantments","trim"]},\
  minecraft:equippable={slot:"head",asset_id:"minecraft:turtle_scute"},\
  !minecraft:attribute_modifiers\
] 1
execute if score @s wokkaman_helmet matches 0 run return run item replace entity @s armor.head with dragon_head[\
  item_name={"text":"Idk"},\
  rarity=epic,\
  unbreakable={},\
  enchantments={"minecraft:binding_curse":1},\
  tooltip_display={hidden_components:["unbreakable","enchantments"]},\
  !minecraft:attribute_modifiers\
] 1

execute unless score @s wokkaman_helmet matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to give wokkaman helmet, helmet id unset"]
scoreboard players operation err temp = @s wokkaman_helmet
tellraw @a [{text:"",color:"red"},"Error when trying to give wokkaman helmet, unimplemented helmet id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp