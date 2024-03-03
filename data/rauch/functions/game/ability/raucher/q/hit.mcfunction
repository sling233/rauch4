#at raucher, as player hit
scoreboard players add @s raucherdmg_num 1
data merge storage temp {pnum:-1,number:-1}
execute store result storage temp pnum int 1 run scoreboard players get @s pnum
execute store result storage temp number int 1 run scoreboard players get @s raucherdmg_num

function rauch:game/ability/raucher/q/give_attribute_macro with storage temp
data remove storage temp pnum
data remove storage temp number

execute at @s run playsound minecraft:entity.evoker.prepare_attack master @a
execute at @s run playsound minecraft:entity.blaze.hurt master @s
effect give @s minecraft:dolphins_grace 5 0 false
scoreboard players set @s raucherdmg 100
