tag @s add fast
attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-3 "flyer_fast" 35 add_value
attribute @s minecraft:player.entity_interaction_range modifier add 3-0-0-0-1 "flyer_fast_range" 1 add_value
execute at @s run playsound minecraft:entity.phantom.flap master @a
execute at @s run playsound minecraft:entity.arrow.hit_player master @s
