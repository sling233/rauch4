execute if entity @a[tag=edit_map] run tag @s add temp1
execute if score Global game_running matches 1 run tag @s add temp2
$execute as @s[tag=!temp1,tag=!temp2] run function rauch:settings/edit_map/edit_initialize {"map_id":$(map_id)}

execute as @s[tag=temp1] run tellraw @s {"text":"Only one Admin at a time can edit maps","color":"red"}
execute as @s[tag=temp2] run tellraw @s {"text":"Cannot edit maps while a game is running","color":"red"}
execute as @s[tag=!edit_map] run playsound minecraft:block.chain.break master @s ~ ~ ~ 1

tag @s remove temp1
tag @s remove temp2
