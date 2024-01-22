time set day
kill @e[type=marker,tag=map]
kill @e[type=armor_stand,tag=stun]
kill @e[type=armor_stand,tag=flag]
kill @e[type=marker,tag=flag_pos]
kill @e[type=spider,tag=raucher_spider]
kill @e[type=armor_stand,tag=projectile]
kill @e[type=marker,tag=shield]
kill @e[type=marker,tag=indicator]
kill @e[type=marker,tag=projectile]
kill @e[type=marker,tag=zar_point]
kill @e[type=marker,tag=hacker_bomb]
kill @e[type=marker,tag=wark_detect]
kill @e[type=block_display,tag=zarzahn_vehicle]
kill @e[type=block_display,tag=wok_vehicle]
tp @e[type=slime,tag=push] ~ ~-1000 ~
tp @e[type=slime,tag=pik_push] ~ ~-1000 ~
#global times und so
scoreboard players reset Global center_red
scoreboard players reset Global center_blue
scoreboard players reset Global capture_info
scoreboard players reset Global time_blue
scoreboard players reset Global time_red
scoreboard players reset Global ctf_overtime
scoreboard players reset Global killNumRed
scoreboard players reset Global killNumBlue
scoreboard players reset Global killsDisplay
scoreboard players reset Global gameend

scoreboard objectives setdisplay sidebar
bossbar set minecraft:center_control visible false
bossbar set minecraft:flag_location visible false
bossbar set minecraft:wokkaman_health visible false
function rauch:game/ui/bossbar/allinvisible
execute as @a[tag=game] run function rauch:game/framework/move_player
execute as @a[tag=spectator] run function rauch:game/framework/spectate_stop
scoreboard players reset Global game_running
