execute at @s run playsound minecraft:entity.warden.roar master @a
effect give @s minecraft:speed 6 2 false
effect give @s minecraft:jump_boost 6 1 false
attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-11 "warkbuff" 0.5 multiply
scoreboard players set @s wark_buff 120
