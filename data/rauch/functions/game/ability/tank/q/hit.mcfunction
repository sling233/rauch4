#attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-2-1 "tank_kb" 0.3 add_value
#effect give @s minecraft:resistance 6 1 true
scoreboard players add @s tank_resistance_num 1
data merge storage temp {pnum:-1,number:-1}
execute store result storage temp pnum int 1 run scoreboard players get @s pnum
execute store result storage temp number int 1 run scoreboard players get @s tank_resistance_num

function rauch:game/ability/tank/q/give_attribute_macro with storage temp
data remove storage temp pnum
data remove storage temp number


execute at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.7
execute at @s run playsound minecraft:entity.iron_golem.death master @s ~ ~ ~ 0.8
effect give @s luck 6 0 false
scoreboard players set @s tank_resistance 120
