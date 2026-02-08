# as wark who's trap is to be removed
scoreboard players operation t_wark_pnum temp = @s pnum
execute as @e[type=marker,tag=wark_detect] if score @s pnum = t_wark_pnum temp run scoreboard players operation t_trapped_pnum temp = @s wark_charge
scoreboard players reset t_wark_pnum temp

execute as @a if score @s pnum = t_trapped_pnum temp run function rauch:game/kits/wark/r/end
scoreboard players reset t_trapped_pnum temp