#######################################################################
# called from foreach on storage map_data.maps $(index) provides current index
#######################################################################

# check if map is "official", else return
$execute unless data storage map_data maps[$(index)].version run return 0

# save index
$data modify storage temp map.index set value $(index)

# get map id
$data modify storage temp map.id set from storage map_data maps[$(index)].id

# check if id is string (if its an int it uses the old map id data)
data modify storage temp string_array set value [I;-1]
execute store success score t_is_int temp run data modify storage temp string_array[0] set from storage temp map.id
data remove storage temp string_array

$execute if score t_is_int temp matches 1 run tellraw @a [\
  {"text":"Map ","color":"red"},\
  {"storage":"map_data","nbt":"maps[$(index)].name"},\
  {"text":" has outdated map data, update the datapack","color":"red"}\
]
execute if score t_is_int temp matches 1 run return run scoreboard players reset t_is_int temp
scoreboard players reset t_is_int temp

function rauch:settings/versions/maps/check with storage temp map
