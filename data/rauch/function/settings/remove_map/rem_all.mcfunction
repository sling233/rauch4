tellraw @s {"text":"Removed All Maps","color":"green"}
scoreboard objectives add t_map_count dummy
execute store result score Global t_map_count run data get storage map_data maps
tellraw @s [{"text":"-> Removed ","color":"dark_green"},{"score":{"name":"Global","objective":"t_map_count"},"color":"light_purple"},{"text":" map(s)","color":"dark_green"}]
data remove storage map_data maps
data remove storage map_data active
tellraw @s {"text":"----------------------------------","color":"yellow"}
clear @s minecraft:written_book[item_name='{"color":"yellow","text":"Settings"}']
