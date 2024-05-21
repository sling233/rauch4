# at wokkaman, as player hit
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
attribute @s minecraft:player.entity_interaction_range modifier add 3-0-0-0-0 "wokkaman_range_debuff" -0.5 add_multiplied_total
attribute @s minecraft:generic.scale modifier add 5-0-0-0-0 "wokkaman_scale_debuff" -0.5 add_multiplied_total
#attribute @s minecraft:generic.movement_speed modifier add 89-0-0-0-0 "wokkaman_debuff" -0.5 add_multiplied_total

effect give @s minecraft:hero_of_the_village 6 0 false
scoreboard players set @s wokkaman_debuff 120
