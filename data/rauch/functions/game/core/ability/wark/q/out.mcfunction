function rauch:game/core/ui/bossbar/wark/invisible

execute at @s as @e[type=marker,tag=wark_detect] if score @s wark_startup = @p pnum at @a if score @s pnum = @p pnum as @p run function rauch:game/core/ability/wark/q/buff_init
execute at @s as @e[type=marker,tag=wark_detect] if score @s wark_startup = @p pnum run kill @s
execute at @s run playsound minecraft:entity.warden.angry master @s
effect give @s darkness 2 0 true
effect give @s minecraft:slowness 5 1 false
scoreboard players reset @s wark_detect
