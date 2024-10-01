execute if score @s map_setting matches 1..99 store result storage map_data edit_buffer.particle int 1 run scoreboard players get @s map_setting
execute if score @s map_setting matches 1..99 run scoreboard players operation Global mapParticle = @s map_setting
execute if score @s map_setting matches 100..199 run function rauch:settings/edit_map/set/set_time
execute if score @s map_setting matches 200..299 run function rauch:settings/edit_map/set/set_weather
execute if score @s map_setting matches 300..399 run function rauch:settings/edit_map/set/set_has_launchpads
execute if score @s map_setting matches 400..499 run function rauch:settings/edit_map/set/set_disable_block_interation
execute if score @s map_setting matches 1000 run data modify storage map_data edit_buffer.particle set value -1
execute if score @s map_setting matches 1000 run scoreboard players reset Global mapParticle
execute if score @s map_setting matches 1001 run data modify storage map_data edit_buffer.time set value -1
execute if score @s map_setting matches 1002 run data modify storage map_data edit_buffer.weather set value -1
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
function rauch:settings/edit_map/give/give_settings
scoreboard players reset @s map_setting
