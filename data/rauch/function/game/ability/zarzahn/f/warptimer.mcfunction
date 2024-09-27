scoreboard players remove @s zarzahn_f 1
function rauch:game/ui/bossbar/zarzahn/update
execute as @s[scores={zarzahn_f=..0}] run function rauch:game/ability/zarzahn/f/time_end
