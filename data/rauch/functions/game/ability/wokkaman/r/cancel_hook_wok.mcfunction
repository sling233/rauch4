execute at @s as @e[type=block_display,tag=wok_vehicle] if score @s pnum = @p zarzahn_hooking run kill @s
execute at @s as @a if score @s pnum = @p zarzahn_hooking run tag @s remove wok_hook
scoreboard players reset @s zarzahn_hooking
tag @s remove inverted_hook
