kill @e[type=armor_stand,tag=flag]
execute at @e[type=armor_stand,tag=active,tag=map,tag=ce] run summon armor_stand ~ ~-20 ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["flag","setup"],ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}
execute as @e[type=armor_stand,tag=flag,tag=setup] at @s run tp @s ~ ~ ~ 90 0
tag @e[type=armor_stand,tag=flag,tag=setup] remove setup
