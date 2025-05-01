############## example ##################
#function rauch:macros/data_write_from {storage:"wok_bow_id",from:"macros data2"}
#the data from "macros data2" will now be in storage "game_data wok_bow_id[pnum of executing player]"
#########################################

execute store result storage macros pnum int 1 run scoreboard players get @s pnum
$data merge storage macros {storage:"$(storage)",from:"$(from)"}
function rauch:macros/write_from_macro with storage macros
