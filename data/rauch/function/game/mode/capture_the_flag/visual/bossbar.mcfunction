#tellraw @a [{"score":{"name":"Global","objective":"dis_diff"}}]
scoreboard players set 100 const 100
scoreboard players operation t_calc temp = Global dis_diff
scoreboard players operation t_calc temp /= 100 const
#tellraw @a [{"score":{"name":"t_calc","objective":"temp"}}]

scoreboard players operation t_calc temp += Global spawn_to_center_distance

execute store result bossbar flag_location value run scoreboard players get t_calc temp
#tellraw @a [{"score":{"name":"t_calc","objective":"temp"}}]


scoreboard players reset t_calc temp
