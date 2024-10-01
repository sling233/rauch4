# executed at location of bolt person, as damage receiver

execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.2 0.4 0.1 0 40 force
execute at @s run particle minecraft:flash ~ ~2 ~ 0 0 0 1 3 force
execute at @s run summon lightning_bolt ~ ~ ~

#damage @s 20 rauch:no_hit_cooldown by @p
# check if still targeted by someone
scoreboard objectives add found dummy
function rauch:game/ability/bolt/q/array/bolt_hit_cycle
execute unless score Global found matches 1 run effect clear @s minecraft:glowing
scoreboard objectives remove found
