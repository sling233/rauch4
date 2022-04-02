#say charge
scoreboard players remove @s bolt 1

#execute at @s[scores={hitPnum=1..12}] as @a if score @s pnum = @p hitPnum run scoreboard players operation @s bolt_hitby = @p pnum
execute as @s[scores={hitPnum=1..12}] at @a if score @p pnum = @s hitPnum run function rauch:game/core/ability/class/bolt/q/hit

execute at @s[scores={bolt=..0}] run function rauch:game/core/ability/class/bolt/q/release
#execute at @s[scores={bolt=..0}] as @a[scores={bolt_hitby=1..}] run function rauch:game/core/ability/class/bolt/q/release
#execute at @s[scores={bolt=..0}] as @a[scores={bolt_hitby=1..}] if score @s bolt_hitby = @p pnum run tag @s add bolt

execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.3 0.4 0.3 0.07 5 force
#execute at @s run particle minecraft:nautilus ~ ~1.3 ~ 0.2 0.4 0.2 0.5 5 force
