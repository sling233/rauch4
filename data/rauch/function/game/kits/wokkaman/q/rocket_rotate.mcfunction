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

# the following 4 lines do this: t_rotate_airborne = max(t_is_hovering, t_is_flying); t_rotate_normal = !t_rotate_airborne
scoreboard players operation t_rotate_airborne temp = t_is_flying temp
scoreboard players operation t_rotate_airborne temp > t_is_hovering temp

scoreboard players set t_rotate_normal temp 1
scoreboard players operation t_rotate_normal temp -= t_rotate_airborne temp

execute if score t_rotate_normal temp matches 1 run function rauch:game/kits/wokkaman/q/rocket_rotate_normal with storage temp
execute if score t_rotate_airborne temp matches 1 run function rauch:game/kits/wokkaman/q/rocket_rotate_airborne with storage temp

scoreboard players reset t_angle_with_offset temp
scoreboard players reset t_delta_angle temp
