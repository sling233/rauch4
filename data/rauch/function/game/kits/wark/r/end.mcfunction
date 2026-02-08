# as trapped player 
scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=marker,tag=wark_detect] if score @s wark_charge = t_pnum temp run kill @s
scoreboard players reset t_pnum temp

scoreboard players reset @s wark_detect
function rauch:game/ui/bossbar/wark/invisible
