scoreboard players remove @s wokkaman_debuff 1
execute if score @s wokkaman_debuff matches 1.. run return 0

attribute @s minecraft:player.entity_interaction_range modifier remove wokkaman_range_debuff
attribute @s minecraft:generic.scale modifier remove wokkaman_scale_debuff
#attribute @s minecraft:generic.movement_speed modifier remove 89-0-0-0-0
scoreboard players add @s armor_target 2
function rauch:game/mechanics/armor


scoreboard players reset @s wokkaman_debuff
