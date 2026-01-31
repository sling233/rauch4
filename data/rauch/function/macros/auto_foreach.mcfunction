############## example ##################
# function rauch:macros/auto_foreach {storage:"hacker_r_tag",path:"list",for_function:"rauch:game/kits/hacker/r/tag/remove_tag"}
# do all work on "macros data.<path>[$(index)]"
# calls function once for every element in storage "game_data <storage>.<path>[pnum of executing player]". has to be a list. provides $(index) as current index
# you can use function rauch:macros/break_foreach to break out at any time (call in for_function)
#########################################

$function rauch:macros/data_get {storage:"$(storage)"}
$function rauch:macros/foreach {for_path:"macros data.$(path)",for_function:"$(for_function)"}
$function rauch:macros/data_write {storage:"$(storage)"}
