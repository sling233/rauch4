#say debuff:(
scoreboard players remove @s boltdmg 1
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.4 0.2 1 5
execute at @s run particle minecraft:damage_indicator ~ ~1.6 ~ 0.2 0.4 0.2 0.1 1
execute as @s[scores={boltdmg=..0}] run item replace entity @s armor.head with oak_button{display:{Name:'{"text":"Pssssst","color":"aqua","italic":false}'},HideFlags:1,CustomModelData:0,Enchantments:[{id:"minecraft:protection",lvl:20s},{id:"minecraft:binding_curse",lvl:1s}]} 1
