scoreboard players add @s tank_resistance_num 1

scoreboard players operation t_resistance_level temp = @s tank_resistance_num
scoreboard players set 2 const 2
#scoreboard players operation t_resistance_level temp *= 2 const
scoreboard players operation t_resistance_level temp += t_resistance_level temp
scoreboard players remove t_resistance_level temp 1

execute store result storage temp resistance int 1 run scoreboard players get t_resistance_level temp

scoreboard players set kb_increase_percent temp 34
scoreboard players operation kb_increase_percent temp *= @s tank_resistance_num
execute store result storage temp kb double 0.01 run scoreboard players get kb_increase_percent temp
scoreboard players reset kb_increase_percent temp

attribute @s minecraft:knockback_resistance modifier remove tank_kb
function rauch:game/kits/tank/q/give_attribute_macro with storage temp
data remove storage temp kb
data remove storage temp resistance

execute at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.7
execute at @s run playsound minecraft:entity.iron_golem.death master @s ~ ~ ~ 0.8
effect give @s luck 6 0 false
scoreboard players set @s tank_resistance 120
