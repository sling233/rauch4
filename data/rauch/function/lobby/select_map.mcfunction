# $(index) has map index
$data modify storage map_data active set from storage map_data maps[$(index)]
$data modify storage map_data active.index set value $(index)

tellraw @a [{"selector":"@s"},{"text":" set map to ","color":"green"},{"nbt":"active.name","storage":"map_data","interpret":true,"color":"light_purple"}]

clear @a minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
