execute unless items entity @s hotbar.2 mace run return run function rauch:game/kits/wokkaman/give_new_mace

# item modify entity @s hotbar.2 {\
#   "function": "minecraft:set_damage",\
#   "damage": 0.1,\
#   "add": true\
# }

item modify entity @s hotbar.2 {\
  "function": "minecraft:set_damage",\
  "damage": 0.001,\
  "add": true\
}