execute store result score t_lobby_time temp run data get storage lobby_data edit_buffer.time
execute store result score t_lobby_weather temp run data get storage lobby_data edit_buffer.weather
execute store result score t_lobby_launchpads temp run data get storage lobby_data edit_buffer.has_launchpads
#execute store result score t_lobby_disable_block_interaction temp run data get storage lobby_data edit_buffer.disable_block_interaction

tellraw @a [{"text":"-------------- Edited Lobby --------------","color":"yellow"}]

execute if score t_lobby_time temp matches -1..0 run tellraw @a [{"text":"Time: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score t_lobby_time temp matches 1 run tellraw @a [{"text":"Time: ","color":"green"},{"text":"Day","color":"light_purple"}]
execute if score t_lobby_time temp matches 2 run tellraw @a [{"text":"Time: ","color":"green"},{"text":"Noon","color":"light_purple"}]
execute if score t_lobby_time temp matches 3 run tellraw @a [{"text":"Time: ","color":"green"},{"text":"Night","color":"light_purple"}]
execute if score t_lobby_time temp matches 4 run tellraw @a [{"text":"Time: ","color":"green"},{"text":"Midnight","color":"light_purple"}]

execute if score t_lobby_weather temp matches -1..0 run tellraw @a [{"text":"Weather: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score t_lobby_weather temp matches 1 run tellraw @a [{"text":"Weather: ","color":"green"},{"text":"Clear","color":"light_purple"}]
execute if score t_lobby_weather temp matches 2 run tellraw @a [{"text":"Weather: ","color":"green"},{"text":"Rain","color":"light_purple"}]
execute if score t_lobby_weather temp matches 3 run tellraw @a [{"text":"Weather: ","color":"green"},{"text":"Thunder","color":"light_purple"}]

execute if score t_lobby_launchpads temp matches -1..0 run tellraw @a [{"text":"Has Launchpads: ","color":"green"},{"text":"No","color":"light_purple"}]
execute if score t_lobby_launchpads temp matches 1 run tellraw @a [{"text":"Has Launchpads: ","color":"green"},{"text":"Yes","color":"light_purple"}]

#execute if score t_lobby_disable_block_interaction temp matches -1..0 run tellraw @a [{"text":"Disable Block Interaction: ","color":"green"},{"text":"No","color":"light_purple"}]
#execute if score t_lobby_disable_block_interaction temp matches 1 run tellraw @a [{"text":"Disable Block Interaction: ","color":"green"},{"text":"Yes","color":"light_purple"}]

tellraw @a {"text":"----------------------------------------------","color":"yellow"}

scoreboard players reset t_lobby_time temp
scoreboard players reset t_lobby_weather temp
scoreboard players reset t_lobby_launchpads temp
#scoreboard players reset t_lobby_disable_block_interaction temp

# set data from edit buffer to lobby data
data modify storage lobby_data spawn_location set from storage lobby_data edit_buffer.spawn_location
data modify storage lobby_data position set from storage lobby_data edit_buffer.position
# sets word spawn from storage lobby_data edit_buffer.position
execute summon marker run function rauch:settings/edit_lobby/finish_set_position
data modify storage lobby_data version set from storage lobby_data edit_buffer.version
data modify storage lobby_data time set from storage lobby_data edit_buffer.time
data modify storage lobby_data weather set from storage lobby_data edit_buffer.weather
data modify storage lobby_data has_launchpads set from storage lobby_data edit_buffer.has_launchpads

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1

function rauch:settings/edit_lobby/return_to_lobby

#clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
