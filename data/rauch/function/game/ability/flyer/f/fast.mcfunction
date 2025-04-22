tag @s add fast
attribute @s minecraft:attack_damage modifier add flyer_fast 35 add_value
attribute @s minecraft:entity_interaction_range modifier add flyer_fast_range 1 add_value
execute at @s run playsound minecraft:entity.phantom.flap master @a
execute at @s run playsound minecraft:entity.arrow.hit_player master @s
