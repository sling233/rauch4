scoreboard objectives add i3 dummy
#tellraw @a [{"text":"    hit list cycle start"},{"nbt":"bolt_hit","storage":"game_data"}]
scoreboard objectives add end_value3 dummy
# set values
scoreboard players set Global i3 0
execute store result score Global end_value3 run data get storage game_data bolt_hit[0].list

execute if score Global i3 < Global end_value3 run function rauch:game/core/ability/bolt/q/array/hit_list_cycle_loop
scoreboard objectives remove i3
scoreboard objectives remove end_value3
#tellraw @a [{"text":"    hit_list_cycle end"},{"nbt":"bolt_hit","storage":"game_data"}]
