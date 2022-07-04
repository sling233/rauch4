attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-2-1 "tank_kb" 0.3 add
effect give @s minecraft:resistance 6 1 true
execute at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.7
execute at @s run playsound minecraft:entity.iron_golem.death master @s ~ ~ ~ 0.8
effect give @s luck 6 0 false
scoreboard players set @s tank_resistance 120
