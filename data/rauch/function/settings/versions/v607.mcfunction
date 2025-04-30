tellraw @a [{"text":"dev605","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev606","color":"light_purple"}]
tellraw @a [{"text":"- Changed map id data. Update the pack to update maps","color":"yellow"}]

# set version
scoreboard players set Global version 607

# map data for spawned in maps: id:1 -> id:"splat", id:2 -> id:"ancient"
function rauch:macros/foreach {for_path:"map_data maps",for_function:"rauch:settings/versions/v607/convert"}

# every scoreboard that was removed
#scoreboard objectives remove blu_calc

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every team that was removed
#team remove red_display

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
