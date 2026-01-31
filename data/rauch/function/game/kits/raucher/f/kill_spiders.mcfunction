scoreboard players operation t_pnum temp = @s pnum
execute at @s as @e[type=spider,tag=raucher_spider] if score @s pnum = t_pnum temp run kill @s
scoreboard players reset t_pnum temp
