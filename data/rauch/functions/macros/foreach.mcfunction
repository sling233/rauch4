############## example ##################
# function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/ability/wokkaman/sr/tagging"}
# calls function once for every element in path (has to be a list). provides $(index) as current index
#########################################

# in case the user provided latter:
$data merge storage macros {for_path:"$(for_path)",for_function:"$(for_function)"}
# start
scoreboard objectives add for_i dummy
scoreboard players set Global for_i 0
# end
scoreboard objectives add for_end_value dummy
$execute store result score Global for_end_value run data get storage $(for_path)
#$say data get storage $(for_path)
#tellraw @a [{"score":{"name":"Global","objective":"for_end_value"}}]
# call loop
execute if score Global for_i < Global for_end_value run function rauch:macros/foreach_loop
# remove start and end variables
scoreboard objectives remove for_i
scoreboard objectives remove for_end_value
data remove storage macros index
