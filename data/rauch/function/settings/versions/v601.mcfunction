#tellraw @a [{"text":"6.0.0","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev601","color":"light_purple"}]
tellraw @a [{"text":"- The Lobby data format changed, so downpatching to earlier versions will lead the lobby position being lost (you can re-add it).","color":"yellow"}]

# set version
scoreboard players set Global version 601

# old lobby data save method, outdated
execute if entity @e[type=armor_stand,tag=main,limit=1] run tellraw @a [{"text":"- Automatically updated lobby data to new format","color":"yellow"}]
execute unless entity @e[type=armor_stand,tag=main,limit=1] run tellraw @a [{"text":"- Old dobby data not found. Could not automatically update. Either the lobby was unloaded, or it didn't exist in the first place.","color":"yellow"}]
execute as @e[type=armor_stand,tag=main,limit=1] at @s run tp @s ~ ~-20 ~
data modify storage lobby_data position set from entity @e[type=armor_stand,tag=main,limit=1] Pos
kill @e[type=armor_stand,tag=main]

# every scoreboard that was removed
#scoreboard objectives remove removed_objective

# every scoreboard that changed type
#scoreboard objectives remove changed_type
#scoreboard objectives add changed_type new_type

# every bossbar that was removed
#bossbar remove minecraft:removed_bossbar
