# as rocket, wokkaman has tag temp, t_pnum global has pnum
scoreboard players operation t_angle_with_offset global = t_angle global
scoreboard players operation t_angle_with_offset global *= 16 global
scoreboard players operation t_angle_with_offset global += @s wokkaman_rocket_phase
execute as @s[tag=counter_clockwise] run scoreboard players operation t_angle_with_offset global *= -1 global

execute store result storage temp angle int 1 run scoreboard players get t_angle_with_offset global
execute store result storage temp roll_angle float 0.01 run scoreboard players get @s wokkaman_rocket_rotating_tilt

scoreboard players operation t_delta_angle global = t_player_angle global
scoreboard players operation t_delta_angle global -= t_angle_with_offset global
execute store result storage temp delta_angle int 1 run scoreboard players get t_delta_angle global


execute at @a[tag=temp,limit=1] run tp @s ~ ~1 ~ ~ ~
execute if score t_is_grounded global matches 1 run function rauch:game/ability/wokkaman/q/rocket_rotate_grounded with storage temp
execute unless score t_is_grounded global matches 1 run function rauch:game/ability/wokkaman/q/rocket_rotate_airborne with storage temp

scoreboard players reset t_angle_with_offset global
scoreboard players reset t_delta_angle global
