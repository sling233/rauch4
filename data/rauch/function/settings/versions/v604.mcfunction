# Update from old version where the version wasnt tracked yet
#tellraw @a [{"text":"dev603","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev604","color":"light_purple"}]

# set version
scoreboard players set Global version 604


# every scoreboard that was removed
#scoreboard objectives remove removed_objective
team remove red_display
team remove blue_display

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
