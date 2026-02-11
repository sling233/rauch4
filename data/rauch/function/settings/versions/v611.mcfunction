tellraw @a [{"text":"dev610","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev611","color":"light_purple"}]
tellraw @a [{"text":"- Finally remove the 20 block offset for map spawns. Automatically converting...","color":"yellow"}]

# set version
scoreboard players set Global version 611

# maps
function rauch:macros/foreach {for_path:"map_data maps",for_function:"rauch:settings/versions/v611/convert"}
data remove storage map_data active
tellraw @a [{"text":"...done. Reset active map.","color":"yellow"}]

kill @e[type=marker,tag=map]
# every scoreboard that was removed
scoreboard objectives remove tele2
scoreboard objectives remove wark_f
scoreboard objectives remove clouds
scoreboard objectives remove health_display
scoreboard objectives remove maxClouds
scoreboard objectives remove plcount
scoreboard objectives remove walk
scoreboard objectives remove flyerFSchedule
scoreboard objectives remove push_levitation_timer
scoreboard objectives remove wokkaman_max_mace_count
scoreboard objectives remove wokkaman_starting_mace_count
scoreboard objectives remove wokkaman_starting_firework_rocket_count
scoreboard objectives remove wokkaman_starting_rocket_count
scoreboard objectives remove wokkaman_max_mace_count
# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every team that was removed
#team remove red_display

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
