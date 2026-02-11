# t_add_firework_count temp dictates how many fireworks to give
execute unless items entity @s hotbar.1 firework_rocket run return run function rauch:game/kits/wokkaman/fireworks/give_new_firework

item modify entity @s hotbar.1 {\
  "function": "minecraft:set_count",\
  "count": {\
    "type": "minecraft:score",\
    "target": {\
      "type": "minecraft:fixed",\
      "name": "t_add_firework_count"\
    },\
    "score": "temp"\
  },\
  "add": true\
}

scoreboard players reset t_add_firework_count temp