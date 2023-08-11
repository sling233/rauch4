# executed as player hit (marker has tag temp) global t_pnum has zarzahns (shooters) pnum
execute if score Global t_pnum matches 1 run tag @s add zarHook1
execute if score Global t_pnum matches 2 run tag @s add zarHook2
execute if score Global t_pnum matches 3 run tag @s add zarHook3
execute if score Global t_pnum matches 4 run tag @s add zarHook4
execute if score Global t_pnum matches 5 run tag @s add zarHook5
execute if score Global t_pnum matches 6 run tag @s add zarHook6
execute if score Global t_pnum matches 7 run tag @s add zarHook7
execute if score Global t_pnum matches 8 run tag @s add zarHook8
execute if score Global t_pnum matches 9 run tag @s add zarHook9
execute if score Global t_pnum matches 10 run tag @s add zarHook10
execute if score Global t_pnum matches 11 run tag @s add zarHook11
execute if score Global t_pnum matches 12 run tag @s add zarHook12

execute at @s run playsound minecraft:block.chain.place master @a
tag @s add zarzahn_hook

execute at @s run summon minecraft:block_display ~ ~0.4 ~ {Tags:["zarzahn_vehicle","setup"]}
scoreboard players operation @e[type=block_display,tag=zarzahn_vehicle,tag=setup] pnum = @s pnum
scoreboard players operation @e[type=block_display,tag=zarzahn_vehicle,tag=setup] zarzahn_f = Global t_pnum
tag @e[type=block_display,tag=zarzahn_vehicle,tag=setup] remove setup

execute as @e[type=marker,tag=zarzahn,tag=temp] run function rauch:game/ability/zarzahn/r/kill
