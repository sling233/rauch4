# as long as there are spider left, loop
# run aggro setup once for each player in the enemy team in each loop
scoreboard objectives add t_success dummy
execute at @s[team=Blue] as @a[team=Red,distance=..30,tag=!dead] unless score @s kit matches 6 run function rauch:game/ability/raucher/f/setup_aggro
execute at @s[team=Red] as @a[team=Blue,distance=..30,tag=!dead] unless score @s kit matches 6 run function rauch:game/ability/raucher/f/setup_aggro
# safety
execute unless score Global t_success matches 1 run return run scoreboard objectives remove t_success
# loop
execute if entity @e[type=spider,tag=setup,tag=raucher_spider] run function rauch:game/ability/raucher/f/spider_aggro
