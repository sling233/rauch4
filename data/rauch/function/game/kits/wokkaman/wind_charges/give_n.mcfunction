# t_add_wind_charges_count temp dictates how many wind charges to give
execute unless items entity @s hotbar.3 wind_charge run return run function rauch:game/kits/wokkaman/wind_charges/give_new

item modify entity @s hotbar.3 {\
  "function": "minecraft:set_count",\
  "count": {\
    "type": "minecraft:score",\
    "target": {\
      "type": "minecraft:fixed",\
      "name": "t_add_wind_charges_count"\
    },\
    "score": "temp"\
  },\
  "add": true\
}

scoreboard players reset t_add_wind_charges_count temp