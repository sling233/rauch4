scoreboard players remove @s bolt 1
function rauch:game/ui/bossbar/bolt/update

# tag players hit
execute as @s[scores={hitPnum=1..12}] run function rauch:game/ability/bolt/q/tag

execute as @s[scores={bolt=..0}] run function rauch:game/ability/bolt/q/release

execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.3 0.4 0.3 0.07 5 force
