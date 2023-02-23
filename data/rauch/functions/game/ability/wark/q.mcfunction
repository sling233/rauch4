execute at @s[team=Red] run function rauch:game/ability/wark/q/detectred
execute at @s[team=Blue] run function rauch:game/ability/wark/q/detectblue

scoreboard players set Global wark_startup 9999999
execute as @a[tag=temp] run function rauch:game/ability/wark/q/evaluate
execute at @s as @a[tag=least,limit=1] run function rauch:game/ability/wark/q/hit

execute if entity @a[tag=least] at @s run playsound minecraft:entity.warden.listening_angry master @a
execute if entity @a[tag=least] run scoreboard players operation @s cool2 = @s cool2_target
execute unless entity @a[tag=least] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=least] at @s run tellraw @s {"text":"No enemy found!","color":"red"}
tag @a remove temp
tag @a remove least
