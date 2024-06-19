############## example ##################
#function rauch:macros/data_write {storage:"wok_bow_id"}
#the data from "macros data" will now be in storage "game_data wok_bow_id[pnum of executing player]"
#########################################

execute store result storage macros pnum int 1 run scoreboard players get @s pnum
$data merge storage macros {storage:"$(storage)"}
function rauch:macros/write_macro with storage macros
