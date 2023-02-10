function rauch:game/core/mechanics/dmg_queue/find_me

scoreboard objectives add t_damage dummy
execute store result score Global t_damage run data get storage game_data damage_queue[0].list[0].amount
# search tree
function rauch:game/core/mechanics/dmg_queue/search_tree/l2/l2_0
data remove storage game_data damage_queue[0].list[0]
execute unless data storage game_data damage_queue[0].list[] run tag @s remove dmg_queue
scoreboard objectives remove t_damage
