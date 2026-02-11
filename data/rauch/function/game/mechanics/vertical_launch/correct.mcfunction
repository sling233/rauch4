# $(level)
# for some reason i have to use a different enchantment, these are just duplicates with a 2 attached at the end of their name
$execute if score t_rotation_y temp matches ..-45 run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_up2": $(level)\
  }\
}
$execute if score t_rotation_y temp matches -44..44 run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_hor2": $(level)\
  }\
}
$execute if score t_rotation_y temp matches 45.. run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_down2": $(level)\
  }\
}
