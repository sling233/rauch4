#######################################################################
# called from foreach on storage macros data2. $(index) provides current index
#######################################################################
# t_pnum temp has pnum to be checked. t_found temp saves found staus

$execute store result score t_comparer temp run data get storage macros data2.list[$(index)]

execute if score t_comparer temp = t_pnum temp run scoreboard players set t_found temp 1
execute if score t_found temp matches 1 run function rauch:macros/break_foreach

scoreboard players reset t_comparer temp