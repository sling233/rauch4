tellraw @s {"text":"Removed Map","color":"green"}
tellraw @s [{"text":"-> ","color":"dark_green"},{"nbt":"maps[5].name","storage":"map_data","interpret":true,"color":"light_purple"}]
data remove storage map_data maps[5]
data remove storage map_data active
tellraw @s {"text":"----------------------------------","color":"yellow"}
clear @a minecraft:written_book{title:"Settings"}
