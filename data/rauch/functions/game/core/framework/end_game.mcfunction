time set day
kill @e[type=armor_stand,tag=map,tag=!root]
kill @e[type=armor_stand,tag=stun]
kill @e[type=armor_stand,tag=r_s]
kill @e[type=armor_stand,tag=r_h]
kill @e[type=armor_stand,tag=flag]
kill @e[type=armor_stand,tag=projectile]
kill @e[type=area_effect_cloud,tag=shield]
kill @e[type=area_effect_cloud,tag=cloud]
kill @e[type=area_effect_cloud,tag=indicator]
kill @e[type=area_effect_cloud,tag=projectile]
kill @e[type=marker,tag=projectile]
kill @e[type=marker,tag=zar_point]
kill @e[type=marker,tag=hacker_bomb]
tp @e[type=slime,tag=push] ~ ~-1000 ~
tp @e[type=slime,tag=pik_push] ~ ~-1000 ~

#global times und so
scoreboard players reset Global center_red
scoreboard players reset Global center_blue
scoreboard players reset Global capture_info
scoreboard players reset Global time_blue
scoreboard players reset Global time_red
scoreboard players reset Global time_times
scoreboard players reset Global killNumRed
scoreboard players reset Global killNumBlue
scoreboard players reset Global killsDisplay

execute as @a[tag=game] run function rauch:game/core/framework/move_player
