execute if score @s map_setting matches 100..199 run function rauch:settings/edit_lobby/set/set_time
execute if score @s map_setting matches 200..299 run function rauch:settings/edit_lobby/set/set_weather
execute if score @s map_setting matches 300..399 run function rauch:settings/edit_lobby/set/set_has_launchpads
#execute if score @s map_setting matches 400..499 run function rauch:settings/edit_lobby/set/set_disable_block_interation
execute if score @s map_setting matches 1001 run data modify storage lobby_data edit_buffer.time set value -1
execute if score @s map_setting matches 1002 run data modify storage lobby_data edit_buffer.weather set value -1
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
function rauch:settings/edit_lobby/give/give_settings
scoreboard players reset @s map_setting
