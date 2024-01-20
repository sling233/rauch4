# at wokkaman, as player hit
execute at @s run summon minecraft:lightning_bolt ~ ~5 ~
attribute @s minecraft:generic.scale base set 0.5
attribute @s minecraft:player.entity_interaction_range base set 1.5
#attribute @s minecraft:generic.movement_speed modifier add 89-0-0-0-0 "wokkaman_debuff" -0.5 multiply

effect give @s minecraft:hero_of_the_village 6 0 false
scoreboard players set @s wokkaman_debuff 120
