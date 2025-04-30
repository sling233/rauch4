# $(index) the index
tag @s add map_setup
$data modify storage map_data maps[$(index)].center set from entity @s Pos
kill @s