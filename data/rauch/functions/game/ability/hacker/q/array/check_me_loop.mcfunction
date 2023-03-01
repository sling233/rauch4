function rauch:game/ability/hacker/q/array/check_me_inner
data modify storage game_data hacker_q_tag append from storage game_data hacker_q_tag[0]
data remove storage game_data hacker_q_tag[0]
# loop logic --------------------------------------
scoreboard players add Global i 1
execute if score Global i < Global end_value run function rauch:game/ability/hacker/q/array/check_me_loop
