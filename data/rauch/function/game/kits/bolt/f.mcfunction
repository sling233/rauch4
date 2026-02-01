execute unless score @s cool3 matches 0 run return 1

#effect give @s minecraft:resistance 5 1
effect give @s minecraft:speed 5 1
scoreboard players set @s boltspeed -101
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

scoreboard players operation @s cool3 = @s cool3_target
