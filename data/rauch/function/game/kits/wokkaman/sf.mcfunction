execute unless score @s cool6 matches 0 run return 1

execute if entity @s[team=Red] at @s run tag @a[team=Blue,distance=..40] add t_selectable
execute if entity @s[team=Blue] at @s run tag @a[team=Red,distance=..40] add t_selectable
tag @s remove t_selectable
function rauch:util/select_players


execute if entity @a[tag=t_selected] run function rauch:game/kits/wokkaman/sf/hit
execute if entity @a[tag=t_selected] run scoreboard players operation @s cool6 = @s cool6_target
execute unless entity @a[tag=t_selected] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=t_selected] run tellraw @s {"text":"No enemy found!","color":"red"}
tag @a remove t_selected

