# look at front of array
scoreboard objectives add comparer dummy
execute store result score Global comparer run data get storage game_data hacker_r_tag[0].list[0]

# if its not this person, append to end of array and delete front
execute unless score @s pnum = Global comparer run data modify storage game_data hacker_r_tag[0].list append from storage game_data hacker_r_tag[0].list[0]
execute unless score @s pnum = Global comparer run data remove storage game_data hacker_r_tag[0].list[0]
# else cancel for loop (set i to end_value)
execute if score @s pnum = Global comparer run scoreboard players set Global found 1
execute if score @s pnum = Global comparer run scoreboard players operation Global i = Global end_value

scoreboard objectives remove comparer
say hitpnumcheckloop
# loop logic --------------------------------------
scoreboard players add Global i 1
execute if score Global i < Global end_value run function rauch:game/ability/hacker/r/array/find_pnum_check_loop
