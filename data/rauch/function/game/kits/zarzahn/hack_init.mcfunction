execute at @s as @e[type=marker,tag=zarzahn] if score @s pnum = @p pnum run kill @s
execute if score @s zarzahn_hooking matches 0.. run function rauch:game/kits/zarzahn/r/cancel_hook_zar
