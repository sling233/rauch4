clear @s minecraft:written_book[item_name='{"color":"yellow","text":"Settings"}']

data modify storage temp adminbook set value {"deathmatch":"gray","koth":"gray","respawn":"gray","testing":"gray","ctf":"gray","wokkaman":"gray"}
execute if score Global mode matches 0 run data modify storage temp adminbook.deathmatch set value "dark_green"
execute if score Global mode matches 1 run data modify storage temp adminbook.koth set value "dark_green"
execute if score Global mode matches 2 run data modify storage temp adminbook.respawn set value "dark_green"
execute if score Global mode matches 3 run data modify storage temp adminbook.testing set value "dark_green"
execute if score Global mode matches 4 run data modify storage temp adminbook.ctf set value "dark_green"
execute if score Global mode matches 5 run data modify storage temp adminbook.wokkaman set value "dark_green"

function rauch:lobby/ui/giveadminbook_macro with storage temp adminbook

item replace entity @s hotbar.0 from entity @e[type=item_frame,tag=adminbook,limit=1] contents
kill @e[type=item_frame,tag=adminbook]
