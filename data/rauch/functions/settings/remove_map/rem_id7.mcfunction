tellraw @s {"text":"Removed Map","color":"green"}
tellraw @s [{"text":"-> ","color":"dark_green"},{"nbt":"maps[7].name","storage":"map_data","interpret":true,"color":"light_purple"}]
data remove storage map_data maps[7]
data remove storage map_data active
tellraw @s {"text":"----------------------------------","color":"yellow"}
clear @s minecraft:written_book[item_name='{"color":"yellow","text":"Settings"}']
