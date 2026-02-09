data modify storage temp spawn_loc.x set from storage map_data active.red[0]
data modify storage temp spawn_loc.y set from storage map_data active.red[1]
data modify storage temp spawn_loc.z set from storage map_data active.red[2]

function rauch:macros/tp_macro with storage temp spawn_loc
data remove storage temp spawn_loc