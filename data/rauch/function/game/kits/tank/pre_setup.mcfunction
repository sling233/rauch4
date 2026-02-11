scoreboard players reset @s tank_resistance
scoreboard players reset @s tank_resistance_num

##########################################################
execute unless score @s kit matches 7 run return 0

scoreboard players set @s tank_damage_taken 0
