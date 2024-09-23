scoreboard players set 2 const 2
scoreboard players set 20 const 20
scoreboard players operation t_cool1_s temp = @s cool1
scoreboard players operation t_cool1_ds temp = @s cool1
scoreboard players operation t_cool1_s temp /= 20 const
scoreboard players operation t_cool1_ds temp %= 20 const
scoreboard players operation t_cool1_ds temp /= 2 const

scoreboard players operation t_cool2_s temp = @s cool2
scoreboard players operation t_cool2_ds temp = @s cool2
scoreboard players operation t_cool2_s temp /= 20 const
scoreboard players operation t_cool2_ds temp %= 20 const
scoreboard players operation t_cool2_ds temp /= 2 const


execute if predicate rauch:skill as @s[scores={actionbar_design=0}] run function rauch:game/ui/actionbar/hacker/hacker_0
execute if predicate rauch:skill as @s[scores={actionbar_design=1}] run function rauch:game/ui/actionbar/hacker/hacker_1
execute if predicate rauch:skill as @s[scores={actionbar_design=2}] run function rauch:game/ui/actionbar/hacker/hacker_2
execute if predicate rauch:skill as @s[scores={actionbar_design=3}] run function rauch:game/ui/actionbar/hacker/hacker_3
execute if predicate rauch:skill as @s[scores={actionbar_design=4}] run function rauch:game/ui/actionbar/hacker/hacker_4

execute unless predicate rauch:skill run title @s[scores={hacker_charges=0}] actionbar [{"text":"Q [","color":"red"},{"score":{"name":"t_cool2_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool2_ds","objective":"temp"},"color":"red"},{"text":"]  ","color":"red"},{"text":"F [◦ ◦]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"t_cool1_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool1_ds","objective":"temp"},"color":"red"},{"text":"]","color":"red"}]
execute unless predicate rauch:skill run title @s[scores={hacker_charges=1}] actionbar [{"text":"Q [","color":"red"},{"score":{"name":"t_cool2_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool2_ds","objective":"temp"},"color":"red"},{"text":"]  ","color":"red"},{"text":"F [⏺ ◦]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"t_cool1_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool1_ds","objective":"temp"},"color":"red"},{"text":"]","color":"red"}]
execute unless predicate rauch:skill run title @s[scores={hacker_charges=2}] actionbar [{"text":"Q [","color":"red"},{"score":{"name":"t_cool2_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool2_ds","objective":"temp"},"color":"red"},{"text":"]  ","color":"red"},{"text":"F [⏺ ⏺]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"t_cool1_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool1_ds","objective":"temp"},"color":"red"},{"text":"]","color":"red"}]


scoreboard players reset t_cool1_s temp
scoreboard players reset t_cool1_ds temp
scoreboard players reset t_cool2_s temp
scoreboard players reset t_cool2_ds temp
