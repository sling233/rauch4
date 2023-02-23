# look at front of array
scoreboard objectives add comparer dummy
execute store result score Global comparer run data get storage game_data bolt_hit[0].list[0]

# if its not the person you hit, append to end of array and delete front
execute unless score @s hitPnum = Global comparer run data modify storage game_data bolt_hit[0].list append from storage game_data bolt_hit[0].list[0]
execute unless score @s hitPnum = Global comparer run data remove storage game_data bolt_hit[0].list[0]
# else cancel for loop (set i to end_value)
execute if score @s hitPnum = Global comparer run scoreboard players set Global found 1
execute if score @s hitPnum = Global comparer run scoreboard players operation Global i = Global end_value

scoreboard objectives remove comparer

# loop logic --------------------------------------
scoreboard players add Global i 1
execute if score Global i < Global end_value run function rauch:game/ability/bolt/q/array/hit_pnum_check_loop
