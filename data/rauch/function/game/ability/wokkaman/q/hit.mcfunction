# t_pnum temp has pnum of wokkaman, as player hit
tag @s add t_damage_target
scoreboard players set t_damage temp 18
execute as @a if score @s pnum = t_pnum temp run function rauch:game/mechanics/damage_target_by_self
tag @s remove t_damage_target
tag @a remove t_damager
