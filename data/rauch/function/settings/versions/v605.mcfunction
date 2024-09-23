tellraw @a [{"text":"dev604","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev605","color":"light_purple"}]
tellraw @a [{"text":"- Removed scoreboard objective wokkaman_debuff","color":"yellow"}]

# set version
scoreboard players set Global version 605


# every scoreboard that was removed
scoreboard objectives remove wokkaman_debuff

# every team that was removed
#team remove red_display

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
