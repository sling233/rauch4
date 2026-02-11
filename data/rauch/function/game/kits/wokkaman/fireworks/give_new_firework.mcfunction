item replace entity @s hotbar.1 with minecraft:firework_rocket[\
  item_name="Boost",\
  rarity="rare",\
  minecraft:fireworks={flight_duration:0},\
  tooltip_display={hidden_components:["fireworks"]}\
] 1

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
  "add": false\
}

scoreboard players reset t_add_firework_count temp
