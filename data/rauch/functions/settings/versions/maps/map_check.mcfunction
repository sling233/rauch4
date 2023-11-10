# run rauch:settings/versions/maps/maps_check_macro for every entry in storage map_data maps
#data merge storage macros {for_path:"map_data maps",for_function:"rauch:settings/versions/maps/map_check_macro"}
function rauch:macros/foreach {for_path:"map_data maps",for_function:"rauch:settings/versions/maps/map_check_macro"}
