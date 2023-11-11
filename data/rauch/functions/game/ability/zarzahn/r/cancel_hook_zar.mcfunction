execute at @s as @e[type=block_display,tag=zarzahn_vehicle] if score @s pnum = @p zarzahn_hooking run kill @s
execute at @s as @a if score @s pnum = @p zarzahn_hooking run tag @s remove zarzahn_hook
scoreboard players reset @s zarzahn_hooking
