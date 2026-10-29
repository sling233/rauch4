# $(index) the index
tag @s add remove_on_game_end
tag @s add map_setup
$data modify storage map_data maps[$(index)].blue set from entity @s Pos
kill @s