# Update from old version where the version wasnt tracked yet
tellraw @a [{"text":"v6.0.0","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"dev6.0.1","color":"light_purple"}]
tellraw @a [{"text":"- The Lobby data format changed, so downpatching to earlier versions will lead the lobby position being lost (you can re-add it)","color":"yellow"}]

# set version
scoreboard players set Global version 601

# old lobby data save method, outdated
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
