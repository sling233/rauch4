# required macro: id (the map id like "splat")
# adds delete_command to rauch:temp removed_map

$data modify storage rauch:temp removed_map.delete_command set from storage map_data versions[{id:"$(id)"}].delete_command