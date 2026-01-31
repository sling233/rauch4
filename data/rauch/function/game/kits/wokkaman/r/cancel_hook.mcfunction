execute at @s as @e[type=block_display,tag=wok_vehicle] if score @s pnum = @p pnum run function rauch:game/kits/wokkaman/r/cancel_hook_vehicle

tag @s remove wok_hook
