#effect give @s minecraft:resistance 5 1
effect give @s minecraft:speed 5 1
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

scoreboard players operation @s cool3 = @s cool3_target
