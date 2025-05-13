tellraw @a [{"text":"dev608","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev609","color":"light_purple"}]
tellraw @a [{"text":"- Changed score \"Global setting_always_enable_launchpads\" to \"%enable_launchpads_in_lobby global\" (copied automatically)","color":"yellow"}]

# set version
scoreboard players set Global version 609

# every scoreboard that was removed
execute if score Global setting_always_enable_launchpads matches 0..1 run scoreboard players operation %enable_launchpads_in_lobby global = Global setting_always_enable_launchpads
scoreboard objectives remove setting_always_enable_launchpads

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every team that was removed
#team remove red_display

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
