tag @s add edit_map
tag @s add add_map
tag @s remove lobby
clear @s
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1

data modify storage map_data edit_buffer set value {name:"",red:[],blue:[],center:[],particle:-1,time:-1,weather:-1,has_launchpads:-1}

scoreboard players add Global number_of_maps 1
tellraw @s {"text":"----------- Adding a Map -----------","color":"yellow"}
tellraw @s [{"text":"Map ","color":"yellow"},{"score":{"name":"Global","objective":"number_of_maps"},"color":"light_purple"},{"text":"/8                                "},{"text":"[Guide]","clickEvent":{"action":"run_command","value":"/function rauch:tutorial/tutorialmap"}}]
execute if score Global number_of_maps matches 9.. run tellraw @s {"text":"Somehow there are too many maps, might implement a fix for this later but i don't think this can happen unless you know what you are doing in which case you know how to fix it yourself","color":"yellow"}
