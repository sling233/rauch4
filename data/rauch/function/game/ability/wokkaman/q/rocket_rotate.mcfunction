# as rocket, wokkaman has tag temp, t_pnum temp has pnum
scoreboard players set 16 const 16
scoreboard players set -1 const -1
scoreboard players operation t_angle_with_offset temp = t_angle temp
scoreboard players operation t_angle_with_offset temp *= 16 const
scoreboard players operation t_angle_with_offset temp += @s wokkaman_rocket_phase
execute as @s[tag=counter_clockwise] run scoreboard players operation t_angle_with_offset temp *= -1 const

execute store result storage temp angle int 1 run scoreboard players get t_angle_with_offset temp
execute store result storage temp roll_angle float 0.01 run scoreboard players get @s wokkaman_rocket_rotating_tilt

scoreboard players operation t_delta_angle temp = t_player_angle temp
scoreboard players operation t_delta_angle temp -= t_angle_with_offset temp
execute store result storage temp delta_angle int 1 run scoreboard players get t_delta_angle temp


execute at @a[tag=temp,limit=1] run tp @s ~ ~1 ~ ~ ~
execute if score t_is_grounded temp matches 1 run function rauch:game/ability/wokkaman/q/rocket_rotate_grounded with storage temp
execute unless score t_is_grounded temp matches 1 run function rauch:game/ability/wokkaman/q/rocket_rotate_airborne with storage temp

scoreboard players reset t_angle_with_offset temp
scoreboard players reset t_delta_angle temp
