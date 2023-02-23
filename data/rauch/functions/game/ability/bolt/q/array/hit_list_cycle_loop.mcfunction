# look at front of array
#tellraw @a [{"text":"    -hit list cycle loop"},{"nbt":"bolt_hit","storage":"game_data"}]
scoreboard objectives add comparer dummy
execute store result score Global comparer run data get storage game_data bolt_hit[0].list[0]

# don't cancel for loops, so the list is un-altered (one cycle)
execute if score @s pnum = Global comparer run scoreboard players set Global found 1
execute if score @s pnum = Global comparer run say found

# cycle list
data modify storage game_data bolt_hit[0].list append from storage game_data bolt_hit[0].list[0]
data remove storage game_data bolt_hit[0].list[0]

scoreboard objectives remove comparer

# loop logic --------------------------------------
scoreboard players add Global i3 1
execute if score Global i3 < Global end_value3 run function rauch:game/ability/bolt/q/array/hit_list_cycle_loop
