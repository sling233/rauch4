execute if entity @a[tag=edit_map] run tellraw @s {"text":"Someone is editing maps, can't delete","color":"red"}
execute if entity @a[tag=edit_map] run playsound minecraft:block.chain.break master @s ~ ~ ~ 1
execute if entity @a[tag=edit_map] run return 0

$tellraw @s [{"text":"Removed Map: ","color":"yellow"},{"nbt":"maps[$(map_id)].name","storage":"map_data","color":"light_purple"}]
$data remove storage map_data maps[$(map_id)]
data remove storage map_data active
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
