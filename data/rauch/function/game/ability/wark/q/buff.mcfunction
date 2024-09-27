scoreboard players remove @s wark_buff 1
execute at @s run particle minecraft:dust_color_transition{from_color:[0.0,0.3,0.3],scale:1.3,to_color:[0.0,0.0,0.0]} ~ ~1 ~ 0.3 0.4 0.3 1 6 force
execute at @s run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.3 0.4 0.3 0.1 3 force
execute as @s[scores={wark_buff=..0}] run function rauch:game/ability/wark/q/end_buff
