#say charge
scoreboard players remove @s bolt 1

execute at @s[scores={hitPnum=1..12}] as @a if score @s pnum = @p hitPnum run function rauch:game/core/ability/class/bolt/q/hit

execute at @s[scores={bolt=..0}] run function rauch:game/core/ability/class/bolt/q/release

execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.3 0.4 0.3 0.07 5 force
