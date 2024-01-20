scoreboard players remove @s wokkaman_debuff 1
execute if score @s wokkaman_debuff matches 1.. run return 0

attribute @s minecraft:generic.scale base set 1
attribute @s minecraft:player.entity_interaction_range modifier remove 3-0-0-0-0
#attribute @s minecraft:generic.movement_speed modifier remove 89-0-0-0-0

scoreboard players reset @s wokkaman_debuff
