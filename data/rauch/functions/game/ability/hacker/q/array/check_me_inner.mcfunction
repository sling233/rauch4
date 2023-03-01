# add variables (basically i'm doing a for loop) (all temporary)
scoreboard objectives add i2 dummy
scoreboard objectives add end_value2 dummy
# set values
scoreboard players set Global i2 0
execute store result score Global end_value2 run data get storage game_data hacker_q_tag[0].list

execute if score Global i2 < Global end_value2 run function rauch:game/ability/hacker/q/array/check_me_inner_loop
scoreboard objectives remove i2
scoreboard objectives remove end_value2
