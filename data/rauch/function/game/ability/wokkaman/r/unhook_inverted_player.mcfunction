# stunned has tag t_stunned, @s is wokka
execute at @s run tp @s ~ ~0 ~
# if player's feet are in ground
execute at @s unless block ~ ~ ~ #minecraft:nonsolid if block ~ ~1 ~ #minecraft:nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~
# if player's feet and eyes are in ground
execute at @s unless block ~ ~1 ~ #minecraft:nonsolid facing entity @a[tag=t_stunned,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~
# do both checks twice
execute at @s unless block ~ ~ ~ #minecraft:nonsolid if block ~ ~1 ~ #minecraft:nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~
execute at @s unless block ~ ~1 ~ #minecraft:nonsolid facing entity @a[tag=t_stunned,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~

scoreboard players reset @s zarzahn_hooking
tag @s remove inverted_hook
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~
execute at @s run playsound minecraft:item.trident.return master @a ~ ~ ~

execute as @a[tag=t_stunned] run function rauch:game/mechanics/unstun

# launch player
execute as @a[tag=t_stunned] run scoreboard players set @s wok_push_timer -20
scoreboard players set $strength player_motion.api.launch 10000
scoreboard players set $y player_motion.api.launch 12000
execute at @s as @a[tag=t_stunned] facing entity @s feet rotated ~ 0 run function player_motion:api/launch_looking
execute as @a[tag=t_stunned] run function player_motion:api/launch_xyz
# damage seems to break the player_motion pack
#damage @a[tag=t_stunned,limit=1] 20 rauch:no_hit_cooldown
#execute at @a[tag=t_stunned] run particle minecraft:dust_plume ~ ~1 ~ 0.1 0.2 0.1 0.3 300 force
execute at @a[tag=t_stunned] run particle minecraft:end_rod ~ ~1 ~ 0.1 0.2 0.1 0.3 150 force
execute at @a[tag=t_stunned] run particle minecraft:dust_color_transition{from_color:[0.9,0.3,0.1],scale:1,to_color:[0.1,0.0,0.0]} ~ ~1 ~ 1 1 1 1 400 force
tag @a[tag=t_stunned] remove wok_hook
