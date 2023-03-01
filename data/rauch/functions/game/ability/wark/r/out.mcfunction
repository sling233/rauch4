function rauch:game/ui/bossbar/wark/invisible

execute at @s as @e[type=marker,tag=wark_detect] if score @s wark_charge = @p pnum at @a if score @s pnum = @p pnum as @p run function rauch:game/ability/wark/r/out_wark
execute at @s as @e[type=marker,tag=wark_detect] if score @s wark_charge = @p pnum run kill @s
execute at @s run playsound minecraft:entity.warden.agitated master @s
effect give @s darkness 2 0 true
#effect give @s minecraft:slowness 5 1 false
scoreboard players reset @s wark_detect
