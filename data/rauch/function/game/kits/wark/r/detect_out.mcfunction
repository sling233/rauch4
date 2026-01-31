#at player out, as marker
execute as @p run function rauch:game/kits/wark/r/out
execute at @a if score @p pnum = @s pnum as @p run function rauch:game/kits/wark/r/out_wark
execute at @s run particle minecraft:sculk_soul ~ ~0.25 ~ 0.5 0.1 0.5 0.1 100 force

kill @s
