scoreboard players remove @s tank 1
function rauch:game/ui/bossbar/tank/update
execute at @s run particle minecraft:witch ~ ~1 ~ 0.1 0.4 0.1 0.1 8 force

execute as @s[scores={tank=..0}] run function rauch:game/ability/tank/f/time
