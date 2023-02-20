# execute at player hit, as bolt
execute as @s[scores={bolt=1..}] run function rauch:game/core/ability/bolt/r/q_tag

# damage queue
execute as @p run function rauch:game/core/mechanics/dmg_queue/find_me
data modify storage game_data damage_queue[0].list prepend value {"amount":15,"from":-1}
execute store result storage game_data damage_queue[0].list[0].from int 1 run scoreboard players get @s pnum
execute if entity @s[scores={raucherdmg=1..}] run function rauch:game/core/mechanics/dmg_queue/apply_raucher_buff
tag @p add dmg_queue
