# Update from old version where the version wasnt tracked yet
#tellraw @a [{"text":"dev602","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev603","color":"light_purple"}]

# set version
scoreboard players set Global version 603


# every scoreboard that was removed
scoreboard objectives remove cool1_s
scoreboard objectives remove cool1_ds
scoreboard objectives remove cool2_s
scoreboard objectives remove cool2_ds
scoreboard objectives remove cool3_s
scoreboard objectives remove cool3_ds


# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
