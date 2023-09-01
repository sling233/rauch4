#tellraw @a [{"score":{"name":"Global","objective":"dis_diff"}}]
scoreboard objectives add t_calc dummy
scoreboard objectives add 100 dummy
scoreboard players set Global 100 100
scoreboard players operation Global t_calc = Global dis_diff
scoreboard players operation Global t_calc /= Global 100
#tellraw @a [{"score":{"name":"Global","objective":"t_calc"}}]

scoreboard players operation Global t_calc += Global spawn_to_center_distance

execute store result bossbar flag_location value run scoreboard players get Global t_calc
#tellraw @a [{"score":{"name":"Global","objective":"t_calc"}}]

scoreboard objectives remove 100
scoreboard objectives remove t_calc
