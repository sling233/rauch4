kill @e[type=armor_stand,tag=flag]
attribute @s minecraft:generic.movement_speed modifier add 0-0-0-3-0 "flag_slow" -0.4 multiply_base
#attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-3-0
tag @s add flagPickedUp
effect give @s minecraft:glowing 1000000 0 true
#effect give @s minecraft:jump_boost 1000000 128 true

scoreboard players set @s hack 200
function rauch:game/core/mechanics/hackinit
