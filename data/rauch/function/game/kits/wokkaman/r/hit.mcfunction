# as player hit. t_pnum temp has pnum of shooter, marker has tag temp
# give zarzahn_hooking score to zarzahn
execute at @s as @a if score @s pnum = t_pnum temp run scoreboard players operation @s zarzahn_hooking = @p pnum

execute at @s run playsound minecraft:block.chain.place master @a
execute as @a if score @s pnum = t_pnum temp at @s run playsound minecraft:entity.arrow.hit_player master @s

tag @s add wok_hook

# check for invert buffer
execute if entity @e[type=marker,tag=wok_hook,tag=temp,tag=buffer_invert] run function rauch:game/kits/wokkaman/r/hit_buffered_invert

execute as @e[type=marker,tag=wok_hook,tag=temp] run tag @s add hit
execute as @e[type=marker,tag=wok_hook,tag=temp] run kill @s

# if vehicle already exists, cancel
execute at @s as @e[type=block_display,tag=wok_vehicle] if score @s pnum = @p pnum run return 0
# else spawn vehicle
execute at @s run summon minecraft:block_display ~ ~0.4 ~ {Tags:["wok_vehicle","setup"]}
scoreboard players operation @e[type=block_display,tag=wok_vehicle,tag=setup] pnum = @s pnum
tag @e[type=block_display,tag=wok_vehicle,tag=setup] remove setup
