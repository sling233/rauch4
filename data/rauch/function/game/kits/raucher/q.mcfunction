execute unless score @s cool2 matches 0 run return 1

execute if entity @s[team=Red] at @s run tag @a[team=Red,distance=..10] add t_selectable
execute if entity @s[team=Blue] at @s run tag @a[team=Blue,distance=..10] add t_selectable
tag @s remove t_selectable
function rauch:util/select_players

execute as @a[tag=t_selected] run function rauch:game/kits/raucher/q/hit
execute if entity @a[tag=t_selected] run scoreboard players operation @s cool2 = @s cool2_target
execute unless entity @a[tag=t_selected] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=t_selected] at @s run tellraw @s {"text":"No teammate in range!","color":"red"}
tag @a remove t_selected

#execute at @s positioned ~ ~1.6 ~ run particle minecraft:happy_villager ^ ^ ^2 0.8 0.8 0.8 1 80 force
#execute at @s positioned ~ ~1.6 ~ run particle minecraft:happy_villager ^ ^ ^5.5 1.2 1.2 1.2 1 180 force
