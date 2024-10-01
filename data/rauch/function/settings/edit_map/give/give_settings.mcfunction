execute store result score t_map_particle temp run data get storage map_data edit_buffer.particle
execute store result score t_map_time temp run data get storage map_data edit_buffer.time
execute store result score t_map_weather temp run data get storage map_data edit_buffer.weather
execute store result score t_map_launchpads temp run data get storage map_data edit_buffer.has_launchpads
data modify storage temp map_stuff set value {"p0":"gray","p1":"gray","p2":"gray","p3":"gray","p4":"gray","p5":"gray","p6":"gray",\
"p7":"gray","p8":"gray","p9":"gray","p10":"gray","p11":"gray","p12":"gray",\
"t0":"gray","t1":"gray","t2":"gray","t3":"gray","t4":"gray",\
"w0":"gray","w1":"gray","w2":"gray","w3":"gray",\
"launchpads_yes":"gray","launchpads_no":"dark_green"}

execute if score t_map_particle temp matches -1..0 run data merge storage temp {map_stuff:{"p0":"dark_green"}}
execute if score t_map_particle temp matches 1 run data merge storage temp {map_stuff:{"p1":"dark_green"}}
execute if score t_map_particle temp matches 2 run data merge storage temp {map_stuff:{"p2":"dark_green"}}
execute if score t_map_particle temp matches 3 run data merge storage temp {map_stuff:{"p3":"dark_green"}}
execute if score t_map_particle temp matches 4 run data merge storage temp {map_stuff:{"p4":"dark_green"}}
execute if score t_map_particle temp matches 5 run data merge storage temp {map_stuff:{"p5":"dark_green"}}
execute if score t_map_particle temp matches 6 run data merge storage temp {map_stuff:{"p6":"dark_green"}}
execute if score t_map_particle temp matches 7 run data merge storage temp {map_stuff:{"p7":"dark_green"}}
execute if score t_map_particle temp matches 8 run data merge storage temp {map_stuff:{"p8":"dark_green"}}
execute if score t_map_particle temp matches 9 run data merge storage temp {map_stuff:{"p9":"dark_green"}}
execute if score t_map_particle temp matches 10 run data merge storage temp {map_stuff:{"p10":"dark_green"}}
execute if score t_map_particle temp matches 11 run data merge storage temp {map_stuff:{"p11":"dark_green"}}
execute if score t_map_particle temp matches 12 run data merge storage temp {map_stuff:{"p12":"dark_green"}}

execute if score t_map_time temp matches -1..0 run data merge storage temp {map_stuff:{"t0":"dark_green"}}
execute if score t_map_time temp matches 1 run data merge storage temp {map_stuff:{"t1":"dark_green"}}
execute if score t_map_time temp matches 2 run data merge storage temp {map_stuff:{"t2":"dark_green"}}
execute if score t_map_time temp matches 3 run data merge storage temp {map_stuff:{"t3":"dark_green"}}
execute if score t_map_time temp matches 4 run data merge storage temp {map_stuff:{"t4":"dark_green"}}

execute if score t_map_weather temp matches -1..0 run data merge storage temp {map_stuff:{"w0":"dark_green"}}
execute if score t_map_weather temp matches 1 run data merge storage temp {map_stuff:{"w1":"dark_green"}}
execute if score t_map_weather temp matches 2 run data merge storage temp {map_stuff:{"w2":"dark_green"}}
execute if score t_map_weather temp matches 3 run data merge storage temp {map_stuff:{"w3":"dark_green"}}

execute if score t_map_launchpads temp matches 1 run data merge storage temp {map_stuff:{"launchpads_yes":"dark_green"}}
execute if score t_map_launchpads temp matches 1 run data merge storage temp {map_stuff:{"launchpads_no":"gray"}}

function rauch:settings/edit_map/give/give_settings_macro with storage temp map_stuff

scoreboard players reset t_map_particle temp
scoreboard players reset t_map_time temp
scoreboard players reset t_map_weather temp
scoreboard players reset t_map_launchpads temp
