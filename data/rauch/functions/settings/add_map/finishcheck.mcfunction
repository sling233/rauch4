execute as @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:0b}]}] run tag @s add name
execute if data entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] ArmorItems[3].tag.Cords[0][2] run tag @s add sr
execute if data entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] ArmorItems[3].tag.Cords[1][2] run tag @s add sb
execute if data entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] ArmorItems[3].tag.Cords[2][2] run tag @s add ce
execute as @s[tag=!name] run tellraw @s {"text":"The Map Name is missing. Enter your name of choice in the according book and sign it. The book title does not matter","color":"red"}
execute as @s[tag=!sr] run tellraw @s {"text":"The Spawn of team Red is missing. Move to the desired location and right click with the according item","color":"red"}
execute as @s[tag=!sb] run tellraw @s {"text":"The Spawn of team Blue is missing. Move to the desired location and right click with the according item","color":"red"}
execute as @s[tag=!ce] run tellraw @s {"text":"Center Location is missing. Move to the desired location and right click with the according item","color":"red"}

execute as @s[tag=name,tag=sr,tag=sb] run function rauch:settings/add_map/finish
scoreboard players reset @s click
tag @s remove name
tag @s remove sr
tag @s remove sb
tag @s remove ce
