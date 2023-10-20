execute at @s as @e[type=block_display,tag=zarzahn_vehicle] if score @s pnum = @p zarzahn_hooking run kill @s
scoreboard players reset @s zarzahn_hooking
