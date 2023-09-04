# function rauch:macros/foreach with storage macros
# storage macros: {"for_path":"storage path","for_function":"function"}
# start
scoreboard objectives add for_i dummy
scoreboard players set Global for_i 0
# end
scoreboard objectives add for_end_value dummy
$execute store result score Global for_end_value run data get storage $(for_path)
# call loop
execute if score Global for_i < Global for_end_value run function rauch:macros/foreach_loop
# remove start and end variables
scoreboard objectives remove for_i
scoreboard objectives remove for_end_value
data remove storage macros index
