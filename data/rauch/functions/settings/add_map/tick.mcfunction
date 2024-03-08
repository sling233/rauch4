execute as @s[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:0b}]}] run function rauch:settings/add_map/givemapnamer
execute as @s[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:1b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:1b}]}] run function rauch:settings/add_map/givevisual
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run function rauch:settings/add_map/giveredspawn
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run function rauch:settings/add_map/givebluespawn
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function rauch:settings/add_map/givecenter
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:7b}]}] run function rauch:settings/add_map/givecanceladdmap
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function rauch:settings/add_map/givefinish


execute as @s[scores={map_setting=1..}] run function rauch:settings/add_map/setting
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:2}] run function rauch:settings/add_map/setred
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:3}] run function rauch:settings/add_map/setblue
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:4}] run function rauch:settings/add_map/setcenter
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:7}] run function rauch:settings/add_map/cancel
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:8}] run function rauch:settings/add_map/finishcheck

scoreboard players enable @s map_setting
