execute if entity @e[type=squid,tag=main] unless entity @e[type=armor_stand,tag=main] run tellraw @s {"text":"Mainlobby position successfully set.","color":"green"}
#execute if entity @e[type=squid,tag=t1] unless entity @e[type=armor_stand,tag=t1] run tellraw @s {"text":"Team 1 Spawn successfully set.","color":"green"}
#execute if entity @e[type=squid,tag=t2] unless entity @e[type=armor_stand,tag=t2] run tellraw @s {"text":"Team 2 Spawn successfully set.","color":"green"}
#execute if entity @e[type=squid,tag=to1] unless entity @e[type=armor_stand,tag=to1] run tellraw @a {"text":"Tower of Team 1 successfully set.","color":"green"}
#execute if entity @e[type=squid,tag=to2] unless entity @e[type=armor_stand,tag=to2] run tellraw @a {"text":"Tower of Team 2 successfully set.","color":"green"}
#execute if entity @e[type=squid,tag=c] unless entity @e[type=armor_stand,tag=c] run tellraw @a {"text":"Center successfully set.","color":"green"}

execute if entity @e[type=squid,tag=main] if entity @e[type=armor_stand,tag=main] run tellraw @s {"text":"Mainlobby position overwritten.","color":"green"}
#execute if entity @e[type=squid,tag=t1] if entity @e[type=armor_stand,tag=t1] run tellraw @s {"text":"Team 1 Spawn overwritten.","color":"green"}
#execute if entity @e[type=squid,tag=t2] if entity @e[type=armor_stand,tag=t2] run tellraw @s {"text":"Team 2 Spawn overwritten.","color":"green"}
#execute if entity @e[type=squid,tag=to1] if entity @e[type=armor_stand,tag=to1] run tellraw @a {"text":"Tower of Team 1 position overwritten.","color":"green"}
#execute if entity @e[type=squid,tag=to2] if entity @e[type=armor_stand,tag=to2] run tellraw @a {"text":"Tower of Team 2 position overwritten.","color":"green"}
#execute if entity @e[type=squid,tag=c] if entity @e[type=armor_stand,tag=c] run tellraw @a {"text":"Center position overwritten.","color":"green"}

execute if entity @e[type=squid,tag=main] run kill @e[type=armor_stand,tag=main]
#execute if entity @e[type=squid,tag=t1] run kill @e[type=armor_stand,tag=t1]
#execute if entity @e[type=squid,tag=t2] run kill @e[type=armor_stand,tag=t2]
#execute if entity @e[type=squid,tag=to1] run kill @e[type=armor_stand,tag=to1]
#execute if entity @e[type=squid,tag=to2] run kill @e[type=armor_stand,tag=to2]
#execute if entity @e[type=squid,tag=c] run kill @e[type=armor_stand,tag=c]

execute as @e[type=squid,tag=main] at @s run summon armor_stand ~ ~20 ~ {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["main","pos"]}
#execute as @e[type=squid,tag=t1] at @s run summon armor_stand ~ ~ ~ {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["t1","pos"]}
#execute as @e[type=squid,tag=t2] at @s run summon armor_stand ~ ~ ~ {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["t2","pos"]}
#execute as @e[type=squid,tag=to1] at @s run summon armor_stand ~ ~ ~ {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["to1","pos"]}
#execute as @e[type=squid,tag=to2] at @s run summon armor_stand ~ ~ ~ {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["to2","pos"]}
#execute as @e[type=squid,tag=c] at @s run summon armor_stand ~ ~ ~ {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["c","pos"]}

execute if entity @e[type=squid,tag=main] run clear @s minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Lobby Spawn\",\"color\":\"blue\",\"italic\":false}"}} 1
#execute if entity @e[type=squid,tag=t1] run clear @s minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Team 1 Spawn\",\"color\":\"blue\",\"italic\":false}"}} 1
#execute if entity @e[type=squid,tag=t2] run clear @s minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Team 2 Spawn\",\"color\":\"blue\",\"italic\":false}"}} 1
#execute if entity @e[type=squid,tag=to1] run clear @a minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Tower of Team 1\",\"color\":\"blue\",\"italic\":false}"}} 1
#execute if entity @e[type=squid,tag=to2] run clear @a minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Tower of Team 2\",\"color\":\"blue\",\"italic\":false}"}} 1
#execute if entity @e[type=squid,tag=c] run clear @a minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Center\",\"color\":\"blue\",\"italic\":false}"}} 1

execute at @e[type=squid,tag=main] run forceload remove all
execute at @e[type=squid,tag=main] run forceload add ~ ~

scoreboard players reset @s squid
tp @e[type=squid,tag=main] ~ ~-1000 ~
kill @e[type=squid,tag=main]
