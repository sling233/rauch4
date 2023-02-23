attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-10 "raucherdmg" 0.5 multiply
execute at @s run playsound minecraft:entity.evoker.prepare_attack master @a
execute at @s run playsound minecraft:entity.blaze.hurt master @s
effect give @s minecraft:water_breathing 5 0 false
scoreboard players set @s raucherdmg 100
