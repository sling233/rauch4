#at player out, as marker
execute as @p run function rauch:game/ability/wark/r/out
execute at @a if score @p pnum = @s pnum as @p run function rauch:game/ability/wark/r/out_wark
kill @s
