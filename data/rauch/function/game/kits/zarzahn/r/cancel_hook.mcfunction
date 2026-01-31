execute at @s as @e[type=block_display,tag=zarzahn_vehicle] if score @s pnum = @p pnum run function rauch:game/kits/zarzahn/r/cancel_hook_vehicle

tag @s remove zarzahn_hook
