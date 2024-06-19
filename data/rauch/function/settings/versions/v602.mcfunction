tellraw @a [{"text":"dev601","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev602","color":"light_purple"}]
tellraw @a [{"text":"- Ambient particle preferences reset due to a change to how it works.","color":"yellow"}]

# set version
scoreboard players set Global version 602


# every scoreboard that was removed
scoreboard objectives remove particle_ambient

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
