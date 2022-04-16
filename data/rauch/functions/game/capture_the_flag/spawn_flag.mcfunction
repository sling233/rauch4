kill @e[type=armor_stand,tag=flag]
execute at @e[type=armor_stand,tag=active,tag=map,tag=ce] run summon armor_stand ~ ~-20 ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["flag"],ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}
