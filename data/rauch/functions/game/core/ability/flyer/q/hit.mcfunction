#executed at Pikka as hit player

scoreboard players add @s stun 60
function rauch:game/core/mechanics/stuninit

# damage queue
function rauch:game/core/mechanics/dmg_queue/find_me
data modify storage game_data damage_queue[0].list prepend value {"amount":48,"from":-1}
execute as @p if entity @s[scores={raucherdmg=1..}] run function rauch:game/core/mechanics/dmg_queue/apply_raucher_buff
execute store result storage game_data damage_queue[0].list[0].from int 1 run scoreboard players get @p pnum
tag @s add dmg_queue