scoreboard players reset @s zarzahn_f
function rauch:game/core/ui/bossbar/zarzahn/invisible
execute at @s as @e[type=marker,tag=zar_point] if score @s pnum = @p pnum run function rauch:game/core/ability/zarzahn/f/destroy
