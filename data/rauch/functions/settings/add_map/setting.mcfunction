execute if score @s map_setting matches 1..99 store result storage map_data maps[0].particle int 1 run scoreboard players get @s map_setting
execute if score @s map_setting matches 100..199 run function rauch:settings/add_map/settime
execute if score @s map_setting matches 1000 run data modify storage map_data maps[0].particle set value -1
execute if score @s map_setting matches 1001 run data modify storage map_data maps[0].time set value -1
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
function rauch:settings/add_map/givevisual
scoreboard players reset @s map_setting
