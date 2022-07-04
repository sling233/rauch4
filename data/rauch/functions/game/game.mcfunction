execute as @a[tag=game,scores={leave=1..}] run function rauch:game/core/framework/move_player
execute if score Global gamestart matches 0.. run function rauch:game/add/gameinit/countdown

#execute as @e[type=armor_stand,tag=map,tag=active,tag=t1] at @s run function rauch:game/core/mechanics/spawn1
#execute as @e[type=armor_stand,tag=map,tag=active,tag=t2] at @s run function rauch:game/core/mechanics/spawn2

execute as @a[tag=game,tag=!dead] run function rauch:game/player
function rauch:game/core/ui/particle

#projektile
execute as @e[type=marker,tag=raucher_rocket] run function rauch:game/core/ability/raucher/r/projectile
execute as @e[type=marker,tag=teleporter] run function rauch:game/core/ability/teleporter/r/projectile
execute as @e[type=marker,tag=hacker] run function rauch:game/core/ability/hacker/r/projectile
execute as @e[type=marker,tag=zarzahn] run function rauch:game/core/ability/zarzahn/r/projectile
execute as @e[type=marker,tag=bolt_blast] run function rauch:game/core/ability/bolt/r/projectile

#armorstand projektile
execute as @e[type=armor_stand,tag=r_h] run function rauch:game/core/ability/raucher/f/heal/heal
execute as @e[type=armor_stand,tag=r_s] run function rauch:game/core/ability/raucher/f/slow/slow
execute as @e[type=armor_stand,tag=hacker_bomb,tag=!onground] run function rauch:game/core/ability/hacker/q/projectile

#stationäres
execute as @e[type=marker,tag=r_h,tag=indicator] run function rauch:game/core/ability/raucher/f/heal/indicator
execute as @e[type=marker,tag=r_s,tag=indicator] run function rauch:game/core/ability/raucher/f/slow/indicator
execute as @e[type=marker,tag=r_h,tag=cloud] run function rauch:game/core/ability/raucher/f/heal/grounded
execute as @e[type=marker,tag=r_s,tag=cloud] run function rauch:game/core/ability/raucher/f/slow/grounded
execute as @e[type=marker,tag=hacker_bomb,tag=center] run function rauch:game/core/ability/hacker/q/grounded
execute as @e[type=marker,tag=hacker_bomb,tag=indicator] run function rauch:game/core/ability/hacker/q/indicator
execute as @e[type=marker,tag=zar_point] run function rauch:game/core/ability/zarzahn/f/point
execute as @e[type=marker,tag=shield] at @s run function rauch:game/core/ability/tank/r/shield
execute as @e[type=marker,tag=wark_detect,tag=active] at @s run function rauch:game/core/ability/wark/q/circle

execute if entity @a[tag=game] if score Global mode matches 0 run function rauch:game/deathmatch/deathmatch
execute if entity @a[tag=game] if score Global mode matches 1 run function rauch:game/king_of_the_hill/king_of_the_hill
execute if entity @a[tag=game] if score Global mode matches 2 run function rauch:game/respawn_deathmatch/respawn_deathmatch
execute if entity @a[tag=game] if score Global mode matches 3 run function rauch:game/practice/practice
execute if entity @a[tag=game] if score Global mode matches 4 run function rauch:game/capture_the_flag/capture_the_flag
