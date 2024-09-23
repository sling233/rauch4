# as player hit. t_pnum global has pnum of shooter, marker has tag temp
# if vehicle already exists, cancel
execute at @s as @e[type=block_display,tag=wok_vehicle] if score @s pnum = @p pnum run return 0
# else spawn vehicle
execute as @a if score @s pnum = t_pnum global at @s run summon minecraft:block_display ~ ~0.4 ~ {Tags:["wok_vehicle","setup"]}
scoreboard players operation @e[type=block_display,tag=wok_vehicle,tag=setup] pnum = @s pnum
tag @e[type=block_display,tag=wok_vehicle,tag=setup] remove setup

execute as @a if score @s pnum = t_pnum global run function rauch:game/ability/wokkaman/hr
# need to do this because in the first frame the player hit is not riding the vehicle yet
scoreboard players set @s stun 30
function rauch:game/mechanics/stuninit
