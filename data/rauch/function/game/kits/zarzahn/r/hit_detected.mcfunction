# executed as player hit (marker has tag temp) t_pnum temp has zarzahns (shooters) pnum
# give zarzahn_hooking score to zarzahn
tag @s add temp
execute as @a if score @s pnum = t_pnum temp run scoreboard players operation @s zarzahn_hooking = @a[tag=temp,limit=1] pnum
tag @s remove temp

execute at @s run playsound minecraft:block.chain.place master @a
tag @s add zarzahn_hook

execute as @e[type=marker,tag=zarzahn,tag=temp] run function rauch:game/kits/zarzahn/r/kill

# if vehicle already exists, cancel
scoreboard players operation t_pnum2 temp = @s pnum
execute as @e[type=block_display,tag=zarzahn_vehicle] if score @s pnum = t_pnum2 temp run return 0
scoreboard players reset t_pnum2 temp

# else spawn vehicle
execute at @s run summon minecraft:block_display ~ ~0.4 ~ {Tags:["zarzahn_vehicle","setup"]}
scoreboard players operation @e[type=block_display,tag=zarzahn_vehicle,tag=setup] pnum = @s pnum
tag @e[type=block_display,tag=zarzahn_vehicle,tag=setup] remove setup
