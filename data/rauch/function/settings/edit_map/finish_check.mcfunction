execute if data entity @s Inventory[{Slot:0b}].components."minecraft:writable_book_content".pages run tag @s add name
execute if data storage map_data edit_buffer.red[0] run tag @s add sr
execute if data storage map_data edit_buffer.blue[0] run tag @s add sb
execute if data storage map_data edit_buffer.center[0] run tag @s add ce
execute as @s[tag=!name] run tellraw @s {"text":"The Map Name is missing. Enter your name of choice in the according book","color":"red"}
execute as @s[tag=!sr] run tellraw @s {"text":"The Spawn of team Red is missing. Move to the desired location and right click with the according item","color":"red"}
execute as @s[tag=!sb] run tellraw @s {"text":"The Spawn of team Blue is missing. Move to the desired location and right click with the according item","color":"red"}
execute as @s[tag=!ce] run tellraw @s {"text":"Center Location is missing. Move to the desired location and right click with the according item","color":"red"}

execute as @s[tag=name,tag=sr,tag=sb,tag=ce] run function rauch:settings/edit_map/finish
scoreboard players reset @s click
tag @s remove name
tag @s remove sr
tag @s remove sb
tag @s remove ce
