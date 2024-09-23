# as long as there are spider left, loop
# run aggro setup once for each player in the enemy team in each loop
execute at @s[team=Blue] as @a[team=Red,distance=..30,tag=!dead] unless score @s kit matches 6 run function rauch:game/ability/raucher/f/setup_aggro
execute at @s[team=Red] as @a[team=Blue,distance=..30,tag=!dead] unless score @s kit matches 6 run function rauch:game/ability/raucher/f/setup_aggro
# safety
execute unless score t_success global matches 1 run return run scoreboard players reset t_success global
# loop
execute if entity @e[type=spider,tag=setup,tag=raucher_spider] run function rauch:game/ability/raucher/f/spider_aggro
