scoreboard players remove @s bolt 1
function rauch:game/core/ui/bossbar/bolt/update
#execute at @s[scores={hitPnum=1..12}] as @a if score @s pnum = @p hitPnum run function rauch:game/core/ability/bolt/q/hit
execute as @s[scores={hitPnum=1..12}] run function rauch:game/core/ability/bolt/q/tag

execute at @s[scores={bolt=..0}] run function rauch:game/core/ability/bolt/q/release

execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.3 0.4 0.3 0.07 5 force
