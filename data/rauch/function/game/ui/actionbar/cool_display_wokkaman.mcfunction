scoreboard players set %2 global 2
scoreboard players set %20 global 20
scoreboard players operation %cool1_s global = @s cool1
scoreboard players operation %cool1_ds global = @s cool1
scoreboard players operation %cool1_s global /= %20 global
scoreboard players operation %cool1_ds global %= %20 global
scoreboard players operation %cool1_ds global /= %2 global

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

scoreboard players operation %cool4_s global = @s cool4
scoreboard players operation %cool4_ds global = @s cool4
scoreboard players operation %cool4_s global /= %20 global
scoreboard players operation %cool4_ds global %= %20 global
scoreboard players operation %cool4_ds global /= %2 global

scoreboard players operation %cool5_s global = @s cool5
scoreboard players operation %cool5_ds global = @s cool5
scoreboard players operation %cool5_s global /= %20 global
scoreboard players operation %cool5_ds global %= %20 global
scoreboard players operation %cool5_ds global /= %2 global

scoreboard players operation %cool6_s global = @s cool6
scoreboard players operation %cool6_ds global = @s cool6
scoreboard players operation %cool6_s global /= %20 global
scoreboard players operation %cool6_ds global %= %20 global
scoreboard players operation %cool6_ds global /= %2 global
scoreboard players reset %20
scoreboard players reset %2

execute if predicate rauch:skill as @s[scores={actionbar_design=0}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_0
execute if predicate rauch:skill as @s[scores={actionbar_design=1}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_1
execute if predicate rauch:skill as @s[scores={actionbar_design=2}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_2
execute if predicate rauch:skill as @s[scores={actionbar_design=3}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_3
execute if predicate rauch:skill as @s[scores={actionbar_design=4}] run function rauch:game/ui/actionbar/wokkaman/wokkaman_4

#execute if predicate rauch:skill run function rauch:game/ui/actionbar/cool_display_wokkaman_macro with storage temp wokkaman_actionbar


scoreboard players reset %cool1_s
scoreboard players reset %cool1_ds
scoreboard players reset %cool2_s
scoreboard players reset %cool2_ds
scoreboard players reset %cool3_s
scoreboard players reset %cool3_ds
scoreboard players reset %cool4_s
scoreboard players reset %cool4_ds
scoreboard players reset %cool5_s
scoreboard players reset %cool5_ds
scoreboard players reset %cool6_s
scoreboard players reset %cool6_ds
