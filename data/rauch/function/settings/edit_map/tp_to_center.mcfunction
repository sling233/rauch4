execute unless data storage map_data edit_buffer.center[0] run tellraw @s {text:"Map center not set yet, can't teleport",color:"red"}
execute unless data storage map_data edit_buffer.center[0] run return run scoreboard players reset @s click

data modify storage temp map_center.x set from storage map_data edit_buffer.center[0]
data modify storage temp map_center.y set from storage map_data edit_buffer.center[1]
data modify storage temp map_center.z set from storage map_data edit_buffer.center[2]

function rauch:settings/edit_map/tp_macro with storage temp map_center

data remove storage temp map_center
scoreboard players reset @s click