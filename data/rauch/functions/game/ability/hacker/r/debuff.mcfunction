scoreboard players remove @s hacker_damage_timer 1
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.03 5
execute as @s[scores={hacker_damage_timer=..0}] run scoreboard players add @s armor_target 1
execute as @s[scores={hacker_damage_timer=..0}] run function rauch:game/mechanics/armor
