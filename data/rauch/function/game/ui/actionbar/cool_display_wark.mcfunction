scoreboard players set %2 global 2
scoreboard players set %20 global 20
scoreboard players operation %cool1_s global = @s cool1
scoreboard players operation %cool1_ds global = @s cool1
scoreboard players operation %cool1_s global /= %20 global
scoreboard players operation %cool1_ds global %= %20 global
scoreboard players operation %cool1_ds global /= %2 global

scoreboard players operation %cool3_s global = @s cool3
scoreboard players operation %cool3_ds global = @s cool3
scoreboard players operation %cool3_s global /= %20 global
scoreboard players operation %cool3_ds global %= %20 global
scoreboard players operation %cool3_ds global /= %2 global

scoreboard players operation %t_wark_disp global = @s wark_charge
scoreboard players set %1000 global 1000
scoreboard players operation %t_wark_disp global /= %1000 global

scoreboard players reset %1000
scoreboard players reset %20
scoreboard players reset %2


execute if predicate rauch:skill as @s[scores={actionbar_design=0}] run function rauch:game/ui/actionbar/wark/wark_0
execute if predicate rauch:skill as @s[scores={actionbar_design=1}] run function rauch:game/ui/actionbar/wark/wark_1
execute if predicate rauch:skill as @s[scores={actionbar_design=2}] run function rauch:game/ui/actionbar/wark/wark_2
execute if predicate rauch:skill as @s[scores={actionbar_design=3}] run function rauch:game/ui/actionbar/wark/wark_3
execute if predicate rauch:skill as @s[scores={actionbar_design=4}] run function rauch:game/ui/actionbar/wark/wark_4

execute unless predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"red"},{"score":{"name":"%t_wark_disp","objective":"global"},"color":"red"},{"text":"%]  ","color":"red"},{"text":"F [","color":"red"},{"score":{"name":"%cool3_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"red"},{"text":"]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"%cool1_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"red"},{"text":"]","color":"red"}]


scoreboard players reset %t_wark_disp
scoreboard players reset %cool1_s
scoreboard players reset %cool1_ds
scoreboard players reset %cool3_s
scoreboard players reset %cool3_ds
