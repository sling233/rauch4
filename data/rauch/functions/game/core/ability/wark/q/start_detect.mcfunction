scoreboard players reset @s wark_startup
execute as @s[scores={health=20..}] run scoreboard players set @s wark_detect 10
execute as @s[scores={health=11..19}] run scoreboard players set @s wark_detect 50
execute as @s[scores={health=..10}] run scoreboard players set @s wark_detect 80


execute at @s[scores={pnum=1}] store result bossbar minecraft:wark1 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=2}] store result bossbar minecraft:wark2 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=3}] store result bossbar minecraft:wark3 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=4}] store result bossbar minecraft:wark4 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=5}] store result bossbar minecraft:wark5 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=6}] store result bossbar minecraft:wark6 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=7}] store result bossbar minecraft:wark7 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=8}] store result bossbar minecraft:wark8 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=9}] store result bossbar minecraft:wark9 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=10}] store result bossbar minecraft:wark10 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=11}] store result bossbar minecraft:wark11 max run scoreboard players get @s wark_detect
execute at @s[scores={pnum=12}] store result bossbar minecraft:wark12 max run scoreboard players get @s wark_detect

execute at @s as @e[type=marker,tag=wark_detect] if score @s wark_startup = @p pnum run function rauch:game/core/ability/wark/q/activate_circle
