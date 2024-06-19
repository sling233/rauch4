# at wokkaman, as player hit
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
attribute @s minecraft:player.entity_interaction_range modifier add wokkaman_range_debuff -0.5 add_multiplied_total
attribute @s minecraft:generic.scale modifier add wokkaman_scale_debuff -0.5 add_multiplied_total
#attribute @s minecraft:generic.movement_speed modifier add 89-0-0-0-0 "wokkaman_debuff" -0.5 add_multiplied_total
execute unless score @s wokkaman_debuff matches 0.. run scoreboard players remove @s armor_target 10
function rauch:game/mechanics/armor

execute at @s[team=Red] run scoreboard players set @a[team=Red,distance=..4] push_levitation_timer -4
execute at @s[team=Red] run effect give @a[team=Red,distance=..4] minecraft:levitation 1 40 true
execute at @s[team=Blue] run scoreboard players set @a[team=Blue,distance=..4] push_levitation_timer -4
execute at @s[team=Blue] run effect give @a[team=Blue,distance=..4] minecraft:levitation 1 40 true

effect give @s minecraft:hero_of_the_village 6 0 false
scoreboard players set @s wokkaman_debuff 120
