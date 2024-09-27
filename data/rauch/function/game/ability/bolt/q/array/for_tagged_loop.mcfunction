# get front of list in temporary variable
#tellraw @a [{"text":"-for tagged loop"},{"nbt":"bolt_hit","storage":"game_data"}]
execute store result score t_player_id temp run data get storage game_data bolt_hit[0].list[0]
# remove first element from list
data remove storage game_data bolt_hit[0].list[0]

# execute a function on that player (by found pnum) at bolts position
execute at @s as @a if score @s pnum = t_player_id temp run function rauch:game/ability/bolt/q/hit


scoreboard players reset t_player_id temp

# loop logic --------------------------------------
scoreboard players add Global i 1
execute if score Global i < Global end_value run function rauch:game/ability/bolt/q/array/for_tagged_loop
