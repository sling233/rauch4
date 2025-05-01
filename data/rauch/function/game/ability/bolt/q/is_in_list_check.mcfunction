#######################################################################
# called from foreach on storage macros data.list $(index) provides current index
#######################################################################
# check for score t_victim_pnum temp

$execute store result score t_comparer temp run data get storage macros data.list[$(index)]
execute if score t_victim_pnum temp = t_comparer temp run scoreboard players set t_is_in_list temp 1
execute if score t_victim_pnum temp = t_comparer temp run function rauch:macros/break_foreach

scoreboard players reset t_comparer temp