# as player hit. Global t_pnum has pnum of shooter, marker has tag temp
# give zarzahn_hooking score to zarzahn
function rauch:debug/debug {name:"hit"}
execute at @s as @a if score @s pnum = Global t_pnum run scoreboard players operation @s zarzahn_hooking = @p pnum

execute at @s run playsound minecraft:block.chain.place master @a
execute as @a if score @s pnum = Global t_pnum at @s run playsound minecraft:entity.arrow.hit_player master @s

tag @s add wok_hook
execute as @e[type=marker,tag=wok_hook,tag=temp] run kill @s

# if vehicle already exists, cancel
execute at @s as @e[type=block_display,tag=wok_vehicle] if score @s pnum = @p pnum run return 0
# else spawn vehicle
execute at @s run summon minecraft:block_display ~ ~0.4 ~ {Tags:["wok_vehicle","setup"]}
scoreboard players operation @e[type=block_display,tag=wok_vehicle,tag=setup] pnum = @s pnum
tag @e[type=block_display,tag=wok_vehicle,tag=setup] remove setup
