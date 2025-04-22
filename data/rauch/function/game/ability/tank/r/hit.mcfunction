# executed at tank, as selected player
scoreboard players set 10 const 10
scoreboard players operation t_heal_calc temp = @p tank_damage_taken
scoreboard players operation t_heal_calc temp /= 10 const

scoreboard players operation @s heal += t_heal_calc temp

execute at @s run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 0.8
scoreboard players reset t_heal_calc temp
