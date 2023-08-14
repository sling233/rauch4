scoreboard players remove @s wark_detect 1
function rauch:game/ui/bossbar/wark/update_detect

execute as @s[scores={wark_detect=..0}] run function rauch:game/ability/wark/r/end
