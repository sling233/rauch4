# set version
scoreboard players set Global version 613

execute as @a[tag=lobby,tag=admin] run clear @s minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]

# every scoreboard that was removed
#scoreboard objectives remove tele2

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every team that was removed
#team remove red_display

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
