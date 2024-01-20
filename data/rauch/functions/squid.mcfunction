tellraw @s {"text":"Lobby position successfully set.","color":"green"}
clear @s minecraft:squid_spawn_egg{display:{Name:'{"text":"Lobby Spawn","color":"blue","italic":false}'}} 1

execute as @e[type=squid,tag=main,limit=1] at @s align xyz run tp @s ~0.5 ~ ~0.5
data modify storage lobby_data position set from entity @e[type=minecraft:squid,tag=main,limit=1] Pos
kill @e[type=marker,tag=lobby_update]

advancement revoke @s only rauch:squid
tp @e[type=squid,tag=main] ~ ~-1000 ~
kill @e[type=squid,tag=main]
