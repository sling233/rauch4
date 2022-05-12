execute if entity @e[type=squid,tag=main] unless entity @e[type=armor_stand,tag=main] run tellraw @s {"text":"Lobby position successfully set.","color":"green"}

execute if entity @e[type=squid,tag=main] if entity @e[type=armor_stand,tag=main] run tellraw @s {"text":"Lobby position overwritten.","color":"green"}

execute if entity @e[type=squid,tag=main] run kill @e[type=armor_stand,tag=main]

execute as @e[type=squid,tag=main] at @s run summon armor_stand ~ ~20 ~ {PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["main","pos"]}

execute if entity @e[type=squid,tag=main] run clear @s minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Lobby Spawn\",\"color\":\"blue\",\"italic\":false}"}} 1

execute at @e[type=squid,tag=main] run forceload remove all
execute at @e[type=squid,tag=main] run forceload add ~ ~

advancement revoke @s only rauch:squid
tp @e[type=squid,tag=main] ~ ~-1000 ~
kill @e[type=squid,tag=main]
