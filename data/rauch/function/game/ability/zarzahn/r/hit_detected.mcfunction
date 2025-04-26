# executed as player hit (marker has tag temp) t_pnum temp has zarzahns (shooters) pnum
# give zarzahn_hooking score to zarzahn
execute at @s as @a if score @s pnum = t_pnum global run scoreboard players operation @s zarzahn_hooking = @p pnum

execute at @s run playsound minecraft:block.chain.place master @a

tag @s add zarzahn_hook

execute as @e[type=marker,tag=zarzahn,tag=temp] run function rauch:game/ability/zarzahn/r/kill

# if vehicle already exists, cancel
execute at @s as @e[type=block_display,tag=zarzahn_vehicle] if score @s pnum = @p pnum run return 0
# else spawn vehicle
execute at @s run summon minecraft:block_display ~ ~0.4 ~ {Tags:["zarzahn_vehicle","setup"]}
scoreboard players operation @e[type=block_display,tag=zarzahn_vehicle,tag=setup] pnum = @s pnum
tag @e[type=block_display,tag=zarzahn_vehicle,tag=setup] remove setup
