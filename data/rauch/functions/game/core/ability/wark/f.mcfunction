execute at @s[team=Red] run function rauch:game/core/ability/wark/f/detectred
execute at @s[team=Blue] run function rauch:game/core/ability/wark/f/detectblue


execute if entity @a[tag=temp] run function rauch:game/core/ability/wark/f/hit
execute unless entity @a[tag=temp] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=temp] at @s run tellraw @s {"text":"No enemy found!","color":"red"}
tag @a remove temp
