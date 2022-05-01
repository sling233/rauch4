attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-2-1 "tank_kb" 0.3 add
effect give @s minecraft:resistance 6 1
execute at @s run playsound minecraft:block.anvil.use master @a
#execute at @s run playsound minecraft:entity.blaze.hurt master @s
scoreboard players set @s tank_resistance 400
