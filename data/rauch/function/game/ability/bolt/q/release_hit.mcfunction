# as damage receiver, bolt has tag t_bolt

execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.2 0.4 0.1 0 40 force
execute at @s run particle minecraft:flash ~ ~2 ~ 0 0 0 1 3 force
execute at @s run summon lightning_bolt ~ ~ ~

# check if still targeted by someone
scoreboard players set t_found temp 0
scoreboard players operation t_pnum temp = @s pnum

execute as @a[tag=game,tag=!dead,scores={kit=1,bolt=1..},tag=!t_bolt] run function rauch:game/ability/bolt/q/find_t_pnum_in_hit_list

execute unless score t_found temp matches 1 run effect clear @s minecraft:glowing
scoreboard players reset t_pnum temp
scoreboard players reset t_found temp
