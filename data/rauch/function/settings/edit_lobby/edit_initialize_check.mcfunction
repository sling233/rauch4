execute if entity @a[tag=edit_map] run tag @s add temp1
execute if entity @a[tag=edit_lobby] run tag @s add temp3
execute if score Global game_running matches 1 run tag @s add temp2
execute as @s[tag=!temp1,tag=!temp2,tag=!temp3] run function rauch:settings/edit_lobby/edit_initialize

execute as @s[tag=temp3] run tellraw @s {"text":"Only one Admin at a time can edit the lobby","color":"red"}
execute as @s[tag=temp1] run tellraw @s {"text":"Cannot edit the lobby while someone is editing maps","color":"red"}
execute as @s[tag=temp2] run tellraw @s {"text":"Cannot edit the lobby while a game is running","color":"red"}

execute as @s[tag=!edit_lobby] run playsound minecraft:block.chain.break master @s ~ ~ ~ 1

tag @s remove temp1
tag @s remove temp2
tag @s remove temp3
