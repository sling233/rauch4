# gets called by rauch:impulse enchantment IMMEDIATELY after use (and removes itself)
item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_up2": 0\
  }\
}