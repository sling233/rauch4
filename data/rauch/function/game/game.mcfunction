execute unless entity @a[tag=game] run return run function rauch:game/framework/no_players
# can end the game
execute if score Global gameend matches 0.. run function rauch:game/framework/end_delay
execute unless score Global game_running matches 1 run return 0

execute if score Global gamestart matches 0.. run function rauch:game/framework/gameinit/countdown

execute as @a[tag=game,tag=!dead] run function rauch:game/player
execute as @a[tag=game] run function rauch:game/mechanics/cooldowns
execute as @a[tag=game,tag=!dead] run function rauch:game/ui/actionbar/cool_display
execute as @a[tag=spectator] run function rauch:game/framework/spectator


#projektile
#execute as @e[type=marker,tag=raucher_rocket] run function rauch:game/kits/raucher/f/projectile
execute as @e[type=marker,tag=teleporter] run function rauch:game/kits/teleporter/r/projectile
execute as @e[type=marker,tag=hacker] run function rauch:game/kits/hacker/r/projectile
execute as @e[type=marker,tag=zarzahn] run function rauch:game/kits/zarzahn/r/projectile
execute as @e[type=marker,tag=zarzahn_rocket] run function rauch:game/kits/zarzahn/q/projectile
execute as @e[type=marker,tag=bolt_blast] run function rauch:game/kits/bolt/r/projectile
execute as @e[type=marker,tag=wok_bow] at @s run function rauch:game/kits/wokkaman/sr/projectile
execute as @e[type=marker,tag=wok_hook] at @s run function rauch:game/kits/wokkaman/r/projectile

#armorstand projektile
execute as @e[type=armor_stand,tag=r_h] run function rauch:game/kits/raucher/r/heal/heal
execute as @e[type=armor_stand,tag=r_s] run function rauch:game/kits/raucher/r/slow/slow
execute as @e[type=armor_stand,tag=hacker_bomb,tag=!onground] run function rauch:game/kits/hacker/q/projectile

execute as @e[type=block_display,tag=zarzahn_vehicle] run function rauch:game/kits/zarzahn/r/hook
execute as @e[type=block_display,tag=wok_vehicle] run function rauch:game/kits/wokkaman/r/vehicle
#stationäres
execute as @e[type=marker,tag=r_h,tag=indicator] run function rauch:game/kits/raucher/r/heal/indicator
execute as @e[type=marker,tag=r_s,tag=indicator] run function rauch:game/kits/raucher/r/slow/indicator
execute as @e[type=marker,tag=r_h,tag=cloud] run function rauch:game/kits/raucher/r/heal/grounded
execute as @e[type=marker,tag=r_s,tag=cloud] run function rauch:game/kits/raucher/r/slow/grounded
execute as @e[type=marker,tag=hacker_bomb,tag=center] run function rauch:game/kits/hacker/q/grounded
execute as @e[type=marker,tag=hacker_bomb,tag=indicator] run function rauch:game/kits/hacker/q/indicator
execute as @e[type=marker,tag=zar_point] run function rauch:game/kits/zarzahn/f/point
execute as @e[type=marker,tag=shield] at @s run function rauch:game/kits/tank/f/shield
execute as @e[type=marker,tag=wark_detect,tag=active] at @s run function rauch:game/kits/wark/r/circle
execute as @e[type=item_display,tag=wok_rocket,tag=active] at @s run function rauch:game/kits/wokkaman/q/projectile
execute as @e[type=text_display,tag=damage_number] run function rauch:game/ui/damage_number_tick

function rauch:game/mode/tick
execute if function rauch:game/mode/has_respawning run function rauch:game/mechanics/respawn/respawn_main