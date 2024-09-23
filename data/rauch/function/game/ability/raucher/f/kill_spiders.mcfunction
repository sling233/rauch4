scoreboard players operation t_pnum global = @s pnum
execute at @s as @e[type=spider,tag=raucher_spider] if score @s pnum = t_pnum global run kill @s
scoreboard players reset t_pnum global
