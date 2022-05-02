scoreboard players set @s tank 80
attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "tankweak" -0.5 multiply_base
attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-2-0 "nokb" 999999 add
effect give @s resistance 4 2 true

scoreboard players operation @s cool3 = @s cool3_target
