# as player hit
scoreboard players add @s raucherdmg_num 1

attribute @s minecraft:attack_damage modifier remove raucherdmg

scoreboard players set dmg_increase_percent temp 50
scoreboard players operation dmg_increase_percent temp *= @s raucherdmg_num
execute store result storage temp damage double 0.01 run scoreboard players get dmg_increase_percent temp
scoreboard players reset dmg_increase_percent temp

function rauch:game/kits/raucher/q/give_attribute_macro with storage temp
data remove storage temp damage

execute at @s run playsound minecraft:entity.evoker.prepare_attack master @a
execute at @s run playsound minecraft:entity.blaze.hurt master @s
effect give @s minecraft:dolphins_grace 5 0 false
scoreboard players set @s raucherdmg 100
