tellraw @s {"text":"Removed All Maps","color":"green"}
execute store result score t_map_count temp run data get storage map_data maps
tellraw @s [{"text":"-> Removed ","color":"dark_green"},{"score":{"name":"t_map_count","objective":"global"},"color":"light_purple"},{"text":" map(s)","color":"dark_green"}]
data remove storage map_data maps
data remove storage map_data active
tellraw @s {"text":"----------------------------------","color":"yellow"}
clear @s minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
scoreboard players reset t_map_count temp
