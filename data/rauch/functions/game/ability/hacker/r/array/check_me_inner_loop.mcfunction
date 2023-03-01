scoreboard objectives add comparer dummy
scoreboard objectives add t_hacker_id dummy

execute store result score Global comparer run data get storage game_data hacker_r_tag[0].list[0]

# run if @s is the player
execute if score @s pnum = Global comparer store result score Global t_hacker_id run data get storage game_data hacker_r_tag[0].id
execute if score @s pnum = Global comparer as @a if score @s pnum = Global t_hacker_id run function rauch:game/ability/hacker/r/kill_reward


# cycle game_data.hacker_r_tag[0].list (don't append value if @s was player )
execute unless score @s pnum = Global comparer run data modify storage game_data hacker_r_tag[0].list append from storage game_data hacker_r_tag[0].list[0]
data remove storage game_data hacker_r_tag[0].list[0]
scoreboard objectives remove t_hacker_id
# loop logic --------------------------------------
scoreboard players add Global i2 1
execute if score Global i2 < Global end_value2 run function rauch:game/ability/hacker/r/array/check_me_inner_loop
