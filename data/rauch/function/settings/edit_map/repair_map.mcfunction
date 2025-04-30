data modify storage temp map.index set from storage map_data edit_buffer.edit_id
data modify storage temp map.id set from storage map_data edit_buffer.id

function rauch:settings/spawn_map/update_macro with storage temp map
# automatically clears storage temp map

function rauch:settings/edit_map/return_to_lobby