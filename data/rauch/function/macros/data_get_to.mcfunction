############## example ##################
#function rauch:macros/data_get {storage:"wok_bow_id",to:"macros data2"}
#the data from game_data wok_bow_id[pnum of executing player] is now in storage "macros data2"
#########################################

execute store result storage macros pnum int 1 run scoreboard players get @s pnum
$data merge storage macros {storage:"$(storage)",to:"$(to)"}
function rauch:macros/get_to_macro with storage macros
