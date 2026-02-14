#tellraw @a [{"text":"dev607","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev608","color":"light_purple"}]

# set version
scoreboard players set Global version 608

# every scoreboard that was removed
scoreboard objectives remove hitPnum

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every team that was removed
#team remove red_display

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
