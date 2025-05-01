#######################################################################
# called from foreach on storage macros data.list. $(index) provides current index
#######################################################################
# t_pnum temp has pnum to be removed.

$execute store result score t_comparer temp run data get storage macros data.list[$(index)]

execute if score t_comparer temp = t_pnum temp run function rauch:macros/break_foreach
$data remove storage macros data.list[$(index)]

scoreboard players reset t_comparer temp