# add variables (basically i'm doing a for loop) (all temporary)
scoreboard objectives add i dummy
scoreboard objectives add end_value dummy

# set values
scoreboard players set Global i 0
execute store result score Global end_value run data get storage game_data bolt_hit

execute if score Global i < Global end_value run function rauch:game/ability/bolt/q/array/find_me_loop
scoreboard objectives remove i
scoreboard objectives remove end_value
