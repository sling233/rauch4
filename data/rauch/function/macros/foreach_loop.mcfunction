execute if score Global for_break matches 1 run return 0

execute store result storage macros index int 1 run scoreboard players get Global for_i
function rauch:macros/foreach_macro with storage macros
# loop logic --------------------------------------
scoreboard players add Global for_i 1
execute if score Global for_i < Global for_end_value run function rauch:macros/foreach_loop
