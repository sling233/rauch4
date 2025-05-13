execute store result score t_lobby_time temp run data get storage lobby_data edit_buffer.time
execute store result score t_lobby_weather temp run data get storage lobby_data edit_buffer.weather
execute store result score t_lobby_launchpads temp run data get storage lobby_data edit_buffer.has_launchpads
#execute store result score t_lobby_disable_block_interaction temp run data get storage lobby_data edit_buffer.disable_block_interaction
data modify storage temp lobby_stuff set value {\
"t0":"gray","t1":"gray","t2":"gray","t3":"gray","t4":"gray",\
"w0":"gray","w1":"gray","w2":"gray","w3":"gray",\
"launchpads_yes":"gray","launchpads_no":"dark_green"}
#"disable_yes":"gray","disable_no":"dark_green"}

execute if score t_lobby_time temp matches -1..0 run data merge storage temp {lobby_stuff:{"t0":"dark_green"}}
execute if score t_lobby_time temp matches 1 run data merge storage temp {lobby_stuff:{"t1":"dark_green"}}
execute if score t_lobby_time temp matches 2 run data merge storage temp {lobby_stuff:{"t2":"dark_green"}}
execute if score t_lobby_time temp matches 3 run data merge storage temp {lobby_stuff:{"t3":"dark_green"}}
execute if score t_lobby_time temp matches 4 run data merge storage temp {lobby_stuff:{"t4":"dark_green"}}

execute if score t_lobby_weather temp matches -1..0 run data merge storage temp {lobby_stuff:{"w0":"dark_green"}}
execute if score t_lobby_weather temp matches 1 run data merge storage temp {lobby_stuff:{"w1":"dark_green"}}
execute if score t_lobby_weather temp matches 2 run data merge storage temp {lobby_stuff:{"w2":"dark_green"}}
execute if score t_lobby_weather temp matches 3 run data merge storage temp {lobby_stuff:{"w3":"dark_green"}}

execute if score t_lobby_launchpads temp matches 1 run data merge storage temp {lobby_stuff:{"launchpads_yes":"dark_green"}}
execute if score t_lobby_launchpads temp matches 1 run data merge storage temp {lobby_stuff:{"launchpads_no":"gray"}}

#execute if score t_lobby_disable_block_interaction temp matches 1 run data merge storage temp {lobby_stuff:{"disable_yes":"dark_green"}}
#execute if score t_lobby_disable_block_interaction temp matches 1 run data merge storage temp {lobby_stuff:{"disable_no":"gray"}}

function rauch:settings/edit_lobby/give/give_settings_macro with storage temp lobby_stuff
#data remove storage temp lobby_stuff

scoreboard players reset t_lobby_time temp
scoreboard players reset t_lobby_weather temp
scoreboard players reset t_lobby_launchpads temp
#scoreboard players reset t_lobby_disable_block_interaction temp
scoreboard players reset t_lobby_is_dark temp
