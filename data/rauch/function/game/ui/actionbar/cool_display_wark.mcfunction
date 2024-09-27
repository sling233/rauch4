scoreboard players set 2 const 2
scoreboard players set 20 const 20
scoreboard players set 1000 const 1000
scoreboard players operation t_cool1_s temp = @s cool1
scoreboard players operation t_cool1_ds temp = @s cool1
scoreboard players operation t_cool1_s temp /= 20 const
scoreboard players operation t_cool1_ds temp %= 20 const
scoreboard players operation t_cool1_ds temp /= 2 const

scoreboard players operation t_cool3_s temp = @s cool3
scoreboard players operation t_cool3_ds temp = @s cool3
scoreboard players operation t_cool3_s temp /= 20 const
scoreboard players operation t_cool3_ds temp %= 20 const
scoreboard players operation t_cool3_ds temp /= 2 const

scoreboard players operation t_wark_disp temp = @s wark_charge
scoreboard players operation t_wark_disp temp /= 1000 const


execute if predicate rauch:skill as @s[scores={actionbar_design=0}] run function rauch:game/ui/actionbar/wark/wark_0
execute if predicate rauch:skill as @s[scores={actionbar_design=1}] run function rauch:game/ui/actionbar/wark/wark_1
execute if predicate rauch:skill as @s[scores={actionbar_design=2}] run function rauch:game/ui/actionbar/wark/wark_2
execute if predicate rauch:skill as @s[scores={actionbar_design=3}] run function rauch:game/ui/actionbar/wark/wark_3
execute if predicate rauch:skill as @s[scores={actionbar_design=4}] run function rauch:game/ui/actionbar/wark/wark_4

execute unless predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"red"},{"score":{"name":"t_wark_disp","objective":"temp"},"color":"red"},{"text":"%]  ","color":"red"},{"text":"F [","color":"red"},{"score":{"name":"t_cool3_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool3_ds","objective":"temp"},"color":"red"},{"text":"]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"t_cool1_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool1_ds","objective":"temp"},"color":"red"},{"text":"]","color":"red"}]


scoreboard players reset t_wark_disp
scoreboard players reset t_cool1_s
scoreboard players reset t_cool1_ds
scoreboard players reset t_cool3_s
scoreboard players reset t_cool3_ds
