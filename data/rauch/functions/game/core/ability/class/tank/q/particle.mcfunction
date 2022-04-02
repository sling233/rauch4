scoreboard players remove @s tank 1
execute at @s run particle minecraft:witch ~ ~1 ~ 0.1 0.4 0.1 0.1 8 force

execute as @s[scores={tank=0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-2
execute as @s[scores={tank=0}] run attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-2-0
