# as player that receives damage (wokkaman has tag t_damager)
tag @s add t_damage_target
scoreboard players set t_damage temp 30
execute as @a[tag=t_damager] run function rauch:game/mechanics/damage_target_by_self
tag @s remove t_damage_target
