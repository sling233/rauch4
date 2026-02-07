execute if entity @a[tag=edit_map] run tellraw @s {"text":"Someone is editing maps, can't delete","color":"red"}
execute if entity @a[tag=edit_map] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1
execute if entity @a[tag=edit_map] run return 0

execute if score Global game_running matches 1 run return run tellraw @s [{text:"",color:"red"},{"text":"Can't delete maps while a game is running."}]


$tellraw @a [{"text":"Removed Map: ","color":"red"},{"nbt":"maps[$(map_id)].name","storage":"map_data","color":"light_purple"}]
$data remove storage map_data maps[$(map_id)]
data remove storage map_data active
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
