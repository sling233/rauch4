scoreboard players remove t_add_mace_uses_count temp 1
# not that efficient but it sould be fine hopefully
item modify entity @s hotbar.2 {\
  "function": "minecraft:set_damage",\
  "damage": 0.0001,\
  "add": true\
}

execute if score t_add_mace_uses_count temp matches 1.. run function rauch:game/kits/wokkaman/mace/add_1_dura