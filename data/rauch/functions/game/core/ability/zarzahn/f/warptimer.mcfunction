scoreboard players remove @s zarzahn_f 1
function rauch:game/core/ui/bossbar/zarzahn/update
execute as @s[scores={zarzahn_f=..0}] run function rauch:game/core/ability/zarzahn/f/time_end
