scoreboard players remove @s wark_buff 1
execute at @s run particle minecraft:dust_color_transition 0 0.3 0.3 1.3 0 0 0 ~ ~1 ~ 0.3 0.4 0.3 1 6 force
execute at @s run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.3 0.4 0.3 0.1 3 force
execute as @s[scores={wark_buff=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-11
