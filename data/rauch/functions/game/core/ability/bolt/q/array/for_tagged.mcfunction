# start
#tellraw @a [{"text":"for tagged start"},{"nbt":"bolt_hit","storage":"game_data"}]
scoreboard objectives add i dummy
scoreboard players set Global i 0
# end
scoreboard objectives add end_value dummy
execute store result score Global end_value run data get storage game_data bolt_hit[0].list
# call loop
execute if score Global i < Global end_value run function rauch:game/core/ability/bolt/q/array/for_tagged_loop
# remove start and end variables
scoreboard objectives remove i
scoreboard objectives remove end_value
#tellraw @a [{"text":"for tagged end"},{"nbt":"bolt_hit","storage":"game_data"}]
