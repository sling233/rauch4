function rauch:game/ui/bossbar/wark/invisible
execute at @s as @e[type=marker,tag=wark_detect] if score @s wark_startup = @p pnum run kill @s
scoreboard players reset @s wark_detect
