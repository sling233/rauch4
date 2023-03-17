kill @e[type=armor_stand,tag=flag]
execute unless entity @e[type=marker,tag=map,tag=ce] run say i dont exist
execute at @e[type=marker,tag=map,tag=ce] run summon armor_stand ~ ~-20 ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["flag","setup"],ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}
execute as @e[type=armor_stand,tag=flag,tag=setup] at @s run tp @s ~ ~ ~ 90 0
execute as @e[type=armor_stand,tag=flag,tag=setup] run effect give @e[type=minecraft:armor_stand,tag=flag] minecraft:glowing 1000000 0
tag @e[type=armor_stand,tag=flag,tag=setup] remove setup
