clear @s minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]

data modify storage rauch temp set value {"deathmatch":"gray","koth":"gray","respawn":"gray","testing":"gray","ctf":"gray","wokkaman":"gray"}
execute if score Global mode matches 0 run data modify storage rauch temp.deathmatch set value "dark_green"
execute if score Global mode matches 1 run data modify storage rauch temp.koth set value "dark_green"
execute if score Global mode matches 2 run data modify storage rauch temp.respawn set value "dark_green"
execute if score Global mode matches 3 run data modify storage rauch temp.testing set value "dark_green"
execute if score Global mode matches 4 run data modify storage rauch temp.ctf set value "dark_green"
execute if score Global mode matches 5 run data modify storage rauch temp.wokkaman set value "dark_green"

# sets up storage rauch temp.pages
function rauch:lobby/ui/adminbook/giveadminbook_macro with storage rauch temp

summon item_frame ~ ~ ~ {Tags:["adminbook"],Silent:1b,Invulnerable:1b,Invisible:1b,Fixed:1b}
item replace entity @e[type=item_frame,tag=adminbook,limit=1] contents with written_book[item_name={"text":"Settings","color":"yellow"},written_book_content={title:"Settings",author:""}]
data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.components."minecraft:written_book_content".pages set from storage rauch temp.pages
item replace entity @s hotbar.0 from entity @e[type=item_frame,tag=adminbook,limit=1] contents
kill @e[type=item_frame,tag=adminbook]
data remove storage rauch temp
