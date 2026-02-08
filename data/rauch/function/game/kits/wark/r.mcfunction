execute unless score @s cool1 matches 0 run return 1

execute if entity @s[team=Red] at @s run tag @a[team=Blue,distance=..20] add t_selectable
execute if entity @s[team=Blue] at @s run tag @a[team=Red,distance=..20] add t_selectable
tag @s remove t_selectable
function rauch:util/select_players

tag @s add t_wark
execute as @a[tag=t_selected] run function rauch:game/kits/wark/r/hit
tag @s remove t_wark
execute if entity @a[tag=t_selected] at @s run playsound minecraft:entity.warden.listening_angry master @a
execute if entity @a[tag=t_selected] run scoreboard players operation @s cool1 = @s cool1_target
execute unless entity @a[tag=t_selected] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=t_selected] at @s run tellraw @s {"text":"No enemy found!","color":"red"}
tag @a remove t_selected
