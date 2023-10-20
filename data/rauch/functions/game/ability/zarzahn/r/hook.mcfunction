execute at @a if score @p pnum = @s pnum run ride @p mount @s

execute store result storage temp pnum int 1 run scoreboard players get @s pnum
function rauch:game/ability/zarzahn/r/move_macro with storage temp
