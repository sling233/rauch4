$tellraw @s [{"text":"Removed Map: ","color":"yellow"},{"nbt":"maps[$(map_id)].name","storage":"map_data","interpret":true,"color":"light_purple"}]
$data remove storage map_data maps[$(map_id)]
data remove storage map_data active
clear @s minecraft:written_book[item_name='{"color":"yellow","text":"Settings"}']
