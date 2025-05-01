execute if score Global for_break matches 1 run return 0

$execute store result storage macros for$(level).index int 1 run scoreboard players get Global for_i$(level)
# foreach_macro doesnt need nested variant
$tellraw @a [{text:"level: $(level)"},{storage:"macros",nbt:"for$(level)"}]
$function rauch:macros/foreach_macro with storage macros for$(level)
# loop logic --------------------------------------
$scoreboard players add Global for_i$(level) 1
$execute if score Global for_i$(level) < Global for_end_value$(level) run function rauch:macros/foreach_loop_nested {level:$(level)}
