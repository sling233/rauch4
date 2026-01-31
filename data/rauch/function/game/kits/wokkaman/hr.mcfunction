tag @s add t_wok
tag @s add inverted_hook
execute at @s as @e[type=block_display,tag=wok_vehicle] if score @s pnum = @p zarzahn_hooking run function rauch:game/kits/wokkaman/r/hook_invert
execute at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 1
# vehicle has tag t_vehicle now
tag @s remove t_wok
