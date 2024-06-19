############## example ##################
#function rauch:macros/data_remove {storage:"wok_bow_id",path:"list"}
#the data storage "game_data wok_bow_id[pnum of executing player].list" will be removed
#########################################

execute store result storage macros pnum int 1 run scoreboard players get @s pnum
$data merge storage macros {storage:"$(storage)",path:"$(path)"}
function rauch:macros/remove_macro with storage macros
