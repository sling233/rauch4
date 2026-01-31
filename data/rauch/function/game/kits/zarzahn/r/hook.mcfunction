# as vehicle
tag @s add temp
scoreboard players operation t_pnum temp = @s pnum
execute as @a if score @s pnum = t_pnum temp run ride @s mount @e[type=block_display,tag=temp,limit=1]
scoreboard players reset t_pnum temp
tag @s remove temp

execute store result storage temp pnum int 1 run scoreboard players get @s pnum
function rauch:game/kits/zarzahn/r/move_macro with storage temp
