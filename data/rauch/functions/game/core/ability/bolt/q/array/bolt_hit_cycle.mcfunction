# start
#tellraw @a [{"text":"  bolt hit cycle start"},{"nbt":"bolt_hit","storage":"game_data"}]
scoreboard objectives add i2 dummy
scoreboard players set Global i2 0
# end
scoreboard objectives add end_value2 dummy
execute store result score Global end_value2 run data get storage game_data bolt_hit
# call loop
execute if score Global i2 < Global end_value2 run function rauch:game/core/ability/bolt/q/array/bolt_hit_cycle_loop
# remove start and end variables
scoreboard objectives remove i2
scoreboard objectives remove end_value2
#tellraw @a [{"text":"  bolt hit cycle end"},{"nbt":"bolt_hit","storage":"game_data"}]
