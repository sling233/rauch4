item replace entity @s hotbar.3 with minecraft:wind_charge 1

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
  "add": false\
}

scoreboard players reset t_add_wind_charges_count temp
