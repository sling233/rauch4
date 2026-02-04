# cancel if not enough damage absorbed
execute if score @s tank_damage_taken matches ..79 run return run function rauch:game/kits/tank/r/not_enough_damage

execute as @s[scores={tank_damage_taken=201..}] run scoreboard players set @s tank_damage_taken 200

execute if entity @s[team=Red] at @s run tag @a[team=Red,distance=..10] add t_selectable
execute if entity @s[team=Blue] at @s run tag @a[team=Blue,distance=..10] add t_selectable
tag @s remove t_selectable
function rauch:util/select_players

execute at @s as @a[tag=t_selected] run function rauch:game/kits/tank/r/hit
execute if entity @a[tag=t_selected] run scoreboard players set @s tank_damage_taken 0
execute unless entity @a[tag=t_selected] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=t_selected] at @s run tellraw @s {"text":"No teammate in range!","color":"red"}
tag @a remove t_selected
