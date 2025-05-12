execute unless items entity @s hotbar.0 writable_book run function rauch:settings/edit_map/give/give_map_namer
execute unless items entity @s hotbar.1 written_book run function rauch:settings/edit_map/give/give_settings
execute unless items entity @s hotbar.2 carrot_on_a_stick run function rauch:settings/edit_map/give/give_red_spawn
execute unless items entity @s hotbar.3 carrot_on_a_stick run function rauch:settings/edit_map/give/give_blue_spawn
execute unless items entity @s hotbar.4 carrot_on_a_stick run function rauch:settings/edit_map/give/give_center

execute as @s[tag=editing_official_map] unless items entity @s hotbar.6 carrot_on_a_stick run function rauch:settings/edit_map/give/give_repair
execute unless items entity @s hotbar.7 carrot_on_a_stick run function rauch:settings/edit_map/give/give_cancel
execute unless items entity @s hotbar.8 carrot_on_a_stick run function rauch:settings/edit_map/give/give_finish


function rauch:game/ui/particle
execute if score Global enable_launchpads matches 1 run function rauch:game/mechanics/launchpads/check_for_launchpads

execute as @s[scores={map_setting=1..}] run function rauch:settings/edit_map/setting
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:red_glass"] run function rauch:settings/edit_map/set/set_red
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:blue_glass"] run function rauch:settings/edit_map/set/set_blue
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:white_glass"] run function rauch:settings/edit_map/set/set_center
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:repair"] run function rauch:settings/edit_map/repair_map
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:red"] run function rauch:settings/edit_map/cancel
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:green"] run function rauch:settings/edit_map/finish_check

scoreboard players enable @s map_setting
