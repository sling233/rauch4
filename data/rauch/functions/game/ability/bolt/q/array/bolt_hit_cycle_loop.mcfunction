# iterate through hit-list to check
#tellraw @a [{"text":"  -bolt hit cycle loop"},{"nbt":"bolt_hit","storage":"game_data"}]
function rauch:game/ability/bolt/q/array/hit_list_cycle

# cycle list (move front to end)
data modify storage game_data bolt_hit append from storage game_data bolt_hit[0]
data remove storage game_data bolt_hit[0]

scoreboard objectives remove t_player_id

# loop logic --------------------------------------
scoreboard players add Global i2 1
execute if score Global i2 < Global end_value2 run function rauch:game/ability/bolt/q/array/bolt_hit_cycle_loop
