scoreboard players set @s wokkaman_rocket_count 0

scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=item_display,tag=wok_rocket,tag=rotating] if score @s pnum = t_pnum temp run kill @s
scoreboard players reset t_pnum temp
