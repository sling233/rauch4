# called by wokkamans die
# kill wokkaman vehicle of wokkaman currently stepping on someone
scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=block_display,tag=wok_sq_vehicle] if score @s wokkaman_weapon = t_pnum temp run kill @s
scoreboard players reset t_pnum temp