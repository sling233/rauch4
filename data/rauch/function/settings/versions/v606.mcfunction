tellraw @a [{"text":"dev605","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev606","color":"light_purple"}]

# set version
scoreboard players set Global version 606


# every scoreboard that was removed
scoreboard objectives remove blu_calc
scoreboard objectives remove red_calc
scoreboard objectives remove xPos
scoreboard objectives remove yPos
scoreboard objectives remove zPos
scoreboard objectives remove 0
scoreboard objectives remove 1
scoreboard objectives remove 2
scoreboard objectives remove 3
scoreboard objectives remove 9
scoreboard objectives remove 10
scoreboard objectives remove 12
scoreboard objectives remove 20

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every team that was removed
#team remove red_display

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
