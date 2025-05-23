scoreboard players set 2 const 2
scoreboard players set 20 const 20
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

scoreboard players operation t_cool4_s temp = @s cool4
scoreboard players operation t_cool4_ds temp = @s cool4
scoreboard players operation t_cool4_s temp /= 20 const
scoreboard players operation t_cool4_ds temp %= 20 const
scoreboard players operation t_cool4_ds temp /= 2 const

scoreboard players operation t_cool5_s temp = @s cool5
scoreboard players operation t_cool5_ds temp = @s cool5
scoreboard players operation t_cool5_s temp /= 20 const
scoreboard players operation t_cool5_ds temp %= 20 const
scoreboard players operation t_cool5_ds temp /= 2 const

scoreboard players operation t_cool6_s temp = @s cool6
scoreboard players operation t_cool6_ds temp = @s cool6
scoreboard players operation t_cool6_s temp /= 20 const
scoreboard players operation t_cool6_ds temp %= 20 const
scoreboard players operation t_cool6_ds temp /= 2 const

execute if predicate rauch:skill as @s[scores={actionbar_design=0}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_0
execute if predicate rauch:skill as @s[scores={actionbar_design=1}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_1
execute if predicate rauch:skill as @s[scores={actionbar_design=2}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_2
execute if predicate rauch:skill as @s[scores={actionbar_design=3}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_3
execute if predicate rauch:skill as @s[scores={actionbar_design=4}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_4

execute unless predicate rauch:skill run title @s actionbar [\
{"text":"Q[","color":"red"},{"score":{"name":"@s","objective":"wokkaman_rocket_count"},"color":"red"},\
{"text":"]  sQ[","color":"red"},{"score":{"name":"t_cool5_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool5_ds","objective":"temp"},"color":"red"},\
{"text":"]  F[","color":"red"},{"score":{"name":"t_cool3_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool3_ds","objective":"temp"},"color":"red"},\
{"text":"]  sF[","color":"red"},{"score":{"name":"t_cool6_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool6_ds","objective":"temp"},"color":"red"},\
{"text":"]  R[","color":"red"},{"score":{"name":"t_cool1_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool1_ds","objective":"temp"},"color":"red"},\
{"text":"]  sR[","color":"red"},{"score":{"name":"t_cool4_s","objective":"temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"t_cool4_ds","objective":"temp"},"color":"red"},\
{"text":"]","color":"red"}]


scoreboard players reset t_cool1_s temp
scoreboard players reset t_cool1_ds temp
scoreboard players reset t_cool3_s temp
scoreboard players reset t_cool3_ds temp
scoreboard players reset t_cool4_s temp
scoreboard players reset t_cool4_ds temp
scoreboard players reset t_cool5_s temp
scoreboard players reset t_cool5_ds temp
scoreboard players reset t_cool6_s temp
scoreboard players reset t_cool6_ds temp
