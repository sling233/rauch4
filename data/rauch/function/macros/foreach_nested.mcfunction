############## example ##################
# function rauch:macros/foreach_nested {for_path:"macros data.list",for_function:"rauch:game/kits/wokkaman/sr/tagging",level:1}
# calls function once for every element in path (has to be a list). provides $(index) as current index
# you can use function rauch:macros/break_foreach to break out at any time (call in for_function)
#########################################
# copy this comment to functions called by this:
#######################################################################
# called from foreach on storage xxxx. $(index) provides current index
#######################################################################


# in case the user provided latter:
$data modify storage macros for$(level) set value {for_function:"$(for_function)"}
# start
$scoreboard objectives add for_i$(level) dummy
$scoreboard players set Global for_i$(level) 0
# end
$scoreboard objectives add for_end_value$(level) dummy
$execute store result score Global for_end_value$(level) run data get storage $(for_path)
#$say data get storage $(for_path)
#tellraw @a [{"score":{"name":"Global","objective":"for_end_value"}}]
# call loop
$execute if score Global for_i$(level) < Global for_end_value$(level) run function rauch:macros/foreach_loop_nested {level:$(level)}
# remove start and end variables
$scoreboard objectives remove for_i$(level)
$scoreboard objectives remove for_end_value$(level)
scoreboard players reset Global for_break
$data remove storage macros for$(level)
