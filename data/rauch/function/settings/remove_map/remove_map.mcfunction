execute if entity @a[tag=edit_map] run tellraw @s {"text":"Someone is editing maps, can't delete","color":"red"}
execute if entity @a[tag=edit_map] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1
execute if entity @a[tag=edit_map] run return 0

execute if score Global game_running matches 1 run return run tellraw @s [{text:"",color:"red"},{"text":"Can't delete maps while a game is running."}]


$data modify storage rauch:temp removed_map set from storage map_data maps[$(map_id)]
$data remove storage map_data maps[$(map_id)]

data remove storage map_data active

tellraw @a [{"text":"Removed Map: ","color":"red"},{"nbt":"removed_map.name","storage":"rauch:temp","color":"light_purple"}]
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1

execute unless data storage rauch:temp removed_map.id run return 1

# mutates rauch:temp removed_map
function rauch:settings/remove_map/get_delete_command with storage rauch:temp removed_map
execute store result storage rauch:temp removed_map.x int 1 run data get storage rauch:temp removed_map.spawn_location[0]
execute store result storage rauch:temp removed_map.y int 1 run data get storage rauch:temp removed_map.spawn_location[1]
execute store result storage rauch:temp removed_map.z int 1 run data get storage rauch:temp removed_map.spawn_location[2]

#tellraw @s {storage:"rauch:temp",nbt:"removed_map"}
function rauch:settings/remove_map/remove_map_send_erase_prompt with storage rauch:temp removed_map