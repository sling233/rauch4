execute unless score @s cool3 matches 0 run return 1

scoreboard players set @s wark_f -3
effect give @s minecraft:levitation 1 50 true

execute at @s run playsound minecraft:entity.warden.attack_impact master @a
scoreboard players operation @s cool3 = @s cool3_target
