#say buff
scoreboard players remove @s raucherdmg 1
execute at @s run particle minecraft:flame ~ ~1 ~ 0.2 0.4 0.2 0.1 5
execute at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.2 5
execute as @s[scores={raucherdmg=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-10
execute as @s[scores={raucherdmg=..0}] run scoreboard players reset @s raucherdmg
