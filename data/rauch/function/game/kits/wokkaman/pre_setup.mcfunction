##########################################################
execute unless score @s kit matches 9 run return 0

scoreboard players set @s cool4 0
scoreboard players set @s cool5 0
scoreboard players set @s cool6 0
scoreboard players set @s wokkaman_rocket_count 0
# change this if more wokkaman texture are added
execute store result score @s wokkaman_weapon run random value 0..4
execute store result score @s wokkaman_helmet run random value 0..50
execute if score @s wokkaman_helmet matches 1.. run scoreboard players set @s wokkaman_helmet 1
