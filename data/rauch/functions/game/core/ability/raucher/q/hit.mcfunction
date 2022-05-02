attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-10 "raucherdmg" 0.5 multiply
execute at @s run playsound minecraft:entity.evoker.prepare_attack master @a
execute at @s run playsound minecraft:entity.blaze.hurt master @s
scoreboard players set @s raucherdmg 100
