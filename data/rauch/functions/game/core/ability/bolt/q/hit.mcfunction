# executed at location of bolt person, as damage receiver

execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.2 0.4 0.1 0 40 force
execute at @s run particle minecraft:flash ~ ~2 ~ 0 0 0 1 3 force
execute at @s run summon lightning_bolt ~ ~6 ~

# damage queue
function rauch:game/core/mechanics/dmg_queue/find_me
data modify storage game_data damage_queue[0].list prepend value {"amount":30,"from":-1}
execute as @p if entity @s[scores={raucherdmg=1..}] run function rauch:game/core/mechanics/dmg_queue/apply_raucher_buff
execute store result storage game_data damage_queue[0].list[0].from int 1 run scoreboard players get @p pnum
tag @s add dmg_queue

# check if still targeted by someone
scoreboard objectives add found dummy
function rauch:game/core/ability/bolt/q/array/bolt_hit_cycle
execute unless score Global found matches 1 run effect clear @s minecraft:glowing
scoreboard objectives remove found
