execute if data storage lobby_data edit_buffer.position[0] run tag @s add pos
execute as @s[tag=!pos] run tellraw @s {"text":"Spawn Location is missing. Move to the desired location and right click with the according item","color":"red"}

execute as @s[tag=pos] run function rauch:settings/edit_lobby/finish
scoreboard players reset @s click

tag @s remove pos
