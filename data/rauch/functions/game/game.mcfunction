execute as @a[tag=game,scores={leave=1..}] run function rauch:game/core/framework/move_player
execute if score Global gamestart matches 0.. run function rauch:game/add/gameinit/countdown

function rauch:game/core/ui/bossbar

execute as @e[type=armor_stand,tag=map,tag=active,tag=t1] at @s run function rauch:game/core/mechanics/spawn1
execute as @e[type=armor_stand,tag=map,tag=active,tag=t2] at @s run function rauch:game/core/mechanics/spawn2

execute as @a[tag=game,tag=!dead] run function rauch:game/player
function rauch:game/core/ui/particle


execute as @e[type=armor_stand,tag=r_h] run function rauch:game/core/ability/class/raucher/r/heal/heal
execute as @e[type=armor_stand,tag=r_s] run function rauch:game/core/ability/class/raucher/r/slow/slow
execute as @e[type=area_effect_cloud,tag=r_h,tag=indicator] run function rauch:game/core/ability/class/raucher/r/heal/indicator
execute as @e[type=area_effect_cloud,tag=r_s,tag=indicator] run function rauch:game/core/ability/class/raucher/r/slow/indicator
execute as @e[type=area_effect_cloud,tag=r_h,tag=cloud] run function rauch:game/core/ability/class/raucher/r/heal/grounded
execute as @e[type=area_effect_cloud,tag=r_s,tag=cloud] run function rauch:game/core/ability/class/raucher/r/slow/grounded
execute as @e[type=marker,tag=zar_point] run function rauch:game/core/ability/class/zarzahn/f/point

execute as @e[type=area_effect_cloud,tag=shield] at @s run function rauch:game/core/ability/class/tank/r/shield
execute as @e[type=area_effect_cloud,tag=hacker2] run function rauch:game/core/ability/class/hacker/q/move
execute as @e[type=area_effect_cloud,tag=hacker] run function rauch:game/core/ability/class/hacker/r/projectile
execute as @e[type=area_effect_cloud,tag=teleporter] run function rauch:game/core/ability/class/teleporter/r/projectile
execute as @e[type=area_effect_cloud,tag=zarzahn] run function rauch:game/core/ability/class/zarzahn/r/projectile
execute as @e[type=marker,tag=bolt_blast] run function rauch:game/core/ability/class/bolt/r/projectile

execute if entity @a[tag=game] if score Global mode matches 0 run function rauch:game/deathmatch/deathmatch
execute if entity @a[tag=game] if score Global mode matches 1 run function rauch:game/king_of_the_hill/king_of_the_hill
execute if entity @a[tag=game] if score Global mode matches 2 run function rauch:game/respawn_deathmatch/respawn_deathmatch
execute if entity @a[tag=game] if score Global mode matches 3 run function rauch:game/practice/practice
execute if entity @a[tag=game] if score Global mode matches 4 run function rauch:game/capture_the_flag/capture_the_flag
