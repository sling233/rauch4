execute as @s[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:0b}]}] run function rauch:settings/edit_map/give/give_map_namer
execute as @s[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:1b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:1b}]}] run function rauch:settings/edit_map/give/give_settings
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run function rauch:settings/edit_map/give/give_red_spawn
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run function rauch:settings/edit_map/give/give_blue_spawn
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function rauch:settings/edit_map/give/give_center
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:7b}]}] run function rauch:settings/edit_map/give/give_cancel
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function rauch:settings/edit_map/give/give_finish

function rauch:game/ui/particle
execute if score Global enable_launchpads matches 1 run function rauch:game/mechanics/launchpads/check_for_launchpads

execute as @s[scores={map_setting=1..}] run function rauch:settings/edit_map/setting
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:2}] run function rauch:settings/edit_map/set/set_red
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:3}] run function rauch:settings/edit_map/set/set_blue
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:4}] run function rauch:settings/edit_map/set/set_center
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:7}] run function rauch:settings/edit_map/cancel
execute as @s[scores={click=1..}] as @s[nbt={SelectedItemSlot:8}] run function rauch:settings/edit_map/finish_check

scoreboard players enable @s map_setting
