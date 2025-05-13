execute unless items entity @s hotbar.0 written_book run function rauch:settings/edit_lobby/give/give_settings
execute unless items entity @s hotbar.1 carrot_on_a_stick run function rauch:settings/edit_lobby/give/give_spawn

execute as @s[tag=editing_official_lobby] unless items entity @s hotbar.6 carrot_on_a_stick run function rauch:settings/edit_lobby/give/give_repair
execute unless items entity @s hotbar.7 carrot_on_a_stick run function rauch:settings/edit_lobby/give/give_cancel
execute unless items entity @s hotbar.8 carrot_on_a_stick run function rauch:settings/edit_lobby/give/give_finish


execute if score Global enable_launchpads matches 1 run function rauch:game/mechanics/launchpads/check_for_launchpads

execute as @s[scores={map_setting=1..}] run function rauch:settings/edit_lobby/setting

execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:white_glass"] run function rauch:settings/edit_lobby/set/set_spawn
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:repair"] run function rauch:settings/edit_lobby/repair_lobby
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:red"] run function rauch:settings/edit_lobby/cancel
execute as @s[scores={click=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_model="rauch:green"] run function rauch:settings/edit_lobby/finish_check

scoreboard players enable @s map_setting
