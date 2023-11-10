############## example ##################
#function rauch:macros/data_get {storage:"wok_bow_id"}
#the data from game_data wok_bow_id[pnum of executing player] is now in storage "macros data"
#########################################

execute store result storage macros pnum int 1 run scoreboard players get @s pnum
$data merge storage macros {storage:"$(storage)"}
function rauch:macros/get_macro with storage macros
