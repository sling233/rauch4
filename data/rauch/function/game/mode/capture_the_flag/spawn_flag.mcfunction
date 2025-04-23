#summons flag at the position the function is executed at
kill @e[type=armor_stand,tag=flag]
execute unless entity @e[type=marker,tag=map,tag=ce] run say i dont exist
summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["flag","setup"],Team:"Flag",equipment:{head:{id:"minecraft:white_banner",Count:1b}}}
execute as @e[type=armor_stand,tag=flag,tag=setup] at @s facing entity @e[type=marker,tag=map,tag=t1] feet run tp @s ~ ~ ~ ~ 0
execute as @e[type=armor_stand,tag=flag,tag=setup] run effect give @e[type=minecraft:armor_stand,tag=flag] minecraft:glowing 1000000 0
scoreboard players operation @e[type=armor_stand,tag=flag,tag=setup] flag_spawn_delay = Global flag_spawn_delay
tag @e[type=armor_stand,tag=flag,tag=setup] remove setup
team modify Flag color yellow
