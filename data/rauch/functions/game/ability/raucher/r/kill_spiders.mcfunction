scoreboard objectives add t_pnum dummy
scoreboard players operation Global t_pnum = @s pnum
execute at @s as @e[type=spider,tag=raucher_spider] if score @s pnum = Global t_pnum run kill @s
scoreboard objectives remove t_pnum
