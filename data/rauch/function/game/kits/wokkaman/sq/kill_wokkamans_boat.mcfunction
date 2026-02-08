scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=block_display,tag=wok_sq_vehicle] if score @s pnum = t_pnum temp run kill @s
scoreboard players reset t_pnum temp