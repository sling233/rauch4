tellraw @a [{"text":"dev609","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev610","color":"light_purple"}]

# set version
scoreboard players set Global version 610

# launchpad in lobby
execute store result storage lobby_data has_launchpads int 1 run scoreboard players get %enable_launchpads_in_lobby global
execute unless score Global game_running matches 1 run scoreboard players operation Global enable_launchpads = %enable_launchpads_in_lobby global
scoreboard players reset %enable_launchpads_in_lobby global

# every scoreboard that was removed
# scoreboard objectives remove setting_always_enable_launchpads

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every team that was removed
#team remove red_display

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
