scoreboard players set %2 global 2
scoreboard players set %20 global 20
scoreboard players operation %cool2_s global = @s cool2
scoreboard players operation %cool2_ds global = @s cool2
scoreboard players operation %cool2_s global /= %20 global
scoreboard players operation %cool2_ds global %= %20 global
scoreboard players operation %cool2_ds global /= %2 global

scoreboard players operation %cool3_s global = @s cool3
scoreboard players operation %cool3_ds global = @s cool3
scoreboard players operation %cool3_s global /= %20 global
scoreboard players operation %cool3_ds global %= %20 global
scoreboard players operation %cool3_ds global /= %2 global

scoreboard players operation %t_damage_s global = @s tank_damage_taken
scoreboard players operation %t_damage_ds global = @s tank_damage_taken
scoreboard players operation %t_damage_s global /= %20 global
scoreboard players operation %t_damage_ds global %= %20 global
scoreboard players operation %t_damage_ds global /= %2 global
scoreboard players reset %20
scoreboard players reset %2


execute if predicate rauch:skill as @s[scores={actionbar_design=0}] run function rauch:game/ui/actionbar/tank/tank_0
execute if predicate rauch:skill as @s[scores={actionbar_design=1}] run function rauch:game/ui/actionbar/tank/tank_1
execute if predicate rauch:skill as @s[scores={actionbar_design=2}] run function rauch:game/ui/actionbar/tank/tank_2
execute if predicate rauch:skill as @s[scores={actionbar_design=3}] run function rauch:game/ui/actionbar/tank/tank_3
execute if predicate rauch:skill as @s[scores={actionbar_design=4}] run function rauch:game/ui/actionbar/tank/tank_4

execute unless predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"red"},{"score":{"name":"%cool2_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"red"},{"text":"]  ","color":"red"},{"text":"F [","color":"red"},{"score":{"name":"%cool3_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"red"},{"text":"]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"%t_damage_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%t_damage_ds","objective":"global"},"color":"red"},{"text":"❤]","color":"red"}]


scoreboard players reset %t_damage_s
scoreboard players reset %cool1_s
scoreboard players reset %cool1_ds
scoreboard players reset %cool2_s
scoreboard players reset %cool2_ds
