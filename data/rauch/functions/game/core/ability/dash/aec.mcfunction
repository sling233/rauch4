function rauch:game/core/ability/dash/dash
scoreboard players set @s click 20
execute as @s[tag=collision] run function rauch:game/core/ability/dash/floor

execute as @s[tag=collision,scores={pnum=1}] at @s align y run tp @a[scores={pnum=1}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=2}] at @s align y run tp @a[scores={pnum=2}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=3}] at @s align y run tp @a[scores={pnum=3}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=4}] at @s align y run tp @a[scores={pnum=4}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=5}] at @s align y run tp @a[scores={pnum=5}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=6}] at @s align y run tp @a[scores={pnum=6}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=7}] at @s align y run tp @a[scores={pnum=7}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=8}] at @s align y run tp @a[scores={pnum=8}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=9}] at @s align y run tp @a[scores={pnum=9}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=10}] at @s align y run tp @a[scores={pnum=10}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=11}] at @s align y run tp @a[scores={pnum=11}] ~0.5 ~ ~0.5
execute as @s[tag=collision,scores={pnum=12}] at @s align y run tp @a[scores={pnum=12}] ~0.5 ~ ~0.5

execute as @s[tag=collision] at @s run kill @s
