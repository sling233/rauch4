tellraw @a [{"text":"dev606","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev607","color":"light_purple"}]
tellraw @a [{"text":"- Removed obsolete scoreboard objectives","color":"yellow"}]

# set version
scoreboard players set Global version 607

# every scoreboard that was removed
scoreboard objectives remove push_levitation_timer
scoreboard objectives remove wark_f

# every team that was removed
#team remove red_display

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
