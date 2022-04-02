scoreboard players reset @s zarzahn_f
execute at @s as @e[type=marker,tag=zar_point] if score @s pnum = @p pnum run function rauch:game/core/ability/class/zarzahn/f/destroy
