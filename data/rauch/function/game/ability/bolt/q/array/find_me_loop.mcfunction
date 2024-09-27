# look at front of array
# temporary variable
scoreboard objectives add comparer dummy
execute store result score Global comparer run data get storage game_data bolt_hit[0].id

# if its not @s's data, append to end of array and delete front
execute unless score @s pnum = Global comparer run data modify storage game_data bolt_hit append from storage game_data bolt_hit[0]
execute unless score @s pnum = Global comparer run data remove storage game_data bolt_hit[0]
# else cancel for loop (set i to end_value)
execute if score @s pnum = Global comparer run scoreboard players operation Global i = Global end_value

scoreboard objectives remove comparer

# loop logic --------------------------------------
scoreboard players add Global i 1
execute if score Global i < Global end_value run function rauch:game/ability/bolt/q/array/find_me_loop
