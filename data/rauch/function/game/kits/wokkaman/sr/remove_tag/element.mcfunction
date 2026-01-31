#######################################################################
# called from auto foreach on storage wok_bow_tag. $(index) provides current index
#######################################################################
# t_pnum temp has pnum of player to be removed

$execute store result score t_comparer temp run data get storage macros data.list[$(index)]

# if found (break because there can only be one 
$execute if score t_pnum temp = t_comparer temp run data remove storage macros data.list[$(index)]
execute if score t_pnum temp = t_comparer temp run function rauch:macros/break_foreach


scoreboard players reset t_comparer temp