execute unless score @s cool3 matches 0 run return 1

scoreboard players operation @s cool3 = @s cool3_target


execute at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~

execute if score @s flyerQSchedule matches ..-1 run return run function rauch:game/kits/pikka/f/interrupt_q
# # can launch with f while using q
#execute if score @s flyerQSchedule matches ..-1 run function rauch:game/kits/pikka/f/interrupt_q

# launch
execute store result score t_rotation_y temp run data get entity @s Rotation[1]
# rot: 0 = straight, negative = looking up, pos = looking down
execute if score t_rotation_y temp matches ..-45 run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_up": 15\
  }\
}
execute if score t_rotation_y temp matches -44..44 run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical": 15\
  }\
}
execute if score t_rotation_y temp matches 45.. run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_down": 15\
  }\
}