# $(index) provides current index
# $(id) and map.id have id of map
# t_current_version temp has current map version

# get latest map version
$execute store result score t_latest_version temp run data get storage map_data versions[{id:$(id)}].version
# get current version
$execute store result score t_current_version temp run data get storage map_data maps[$(index)].version


$execute unless score t_current_version temp = t_latest_version temp run tellraw @a [\
  {"text":"An Update is available for map ","color":"yellow"},\
  {"storage":"map_data",nbt:"maps[$(index)].name","color":"light_purple"},\
  {"text":". Click ","color":"yellow"},{"text":"HERE","click_event":{"action":"run_command",\
    "command":"/function rauch:settings/spawn_map/update_macro {id:$(id),index:$(index)}"},"italic":true,"color":"gold"},\
  {"text":" to update.","color":"yellow"}\
]

execute unless score t_current_version temp = t_latest_version temp run scoreboard players set #t_map_update_found temp 1

scoreboard players reset t_current_version temp
scoreboard players reset t_latest_version temp
