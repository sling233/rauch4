scoreboard objectives add i dummy
scoreboard objectives add end_value dummy
# set values
scoreboard players set Global i 0
execute store result score Global end_value run data get storage game_data hacker_r_tag[0].list

execute if score Global i < Global end_value run function rauch:game/ability/hacker/r/array/find_pnum_check_loop
scoreboard objectives remove i
scoreboard objectives remove end_value
