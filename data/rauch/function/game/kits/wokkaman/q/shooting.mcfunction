execute if score @s wokkaman_shoot_cooldown matches 0 run function rauch:game/kits/wokkaman/q/shoot
scoreboard players add @s wokkaman_shoot_cooldown 1
execute if score @s wokkaman_shoot_cooldown matches 2 run scoreboard players set @s wokkaman_shoot_cooldown 0
execute if score @s wokkaman_rocket_shooting_count matches ..0 run tag @s remove wokkaman_q_shooting
