#say damage
execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.2 0.4 0.1 0 40 force
execute at @s run particle minecraft:flash ~ ~2 ~ 0 0 0 1 3 force
execute at @s run summon lightning_bolt ~ ~10 ~

#scoreboard players set @s stun 20
#function rauch:game/core/mechanics/stuninit
effect give @s instant_damage 1 2

execute unless score @s bolt_hitby matches 1..4095 run effect clear @s minecraft:glowing
execute unless score @s bolt_hitby matches 1..4095 run tag @s remove bolt
