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

data modify storage temp wokkaman_actionbar set value {q:"dark_purple",f:"#2194a5",r:"gold",sq:"#2a2afc",sf:"#008800",sr:"#aa2222"}
execute if score @s cool1 matches 1.. run data modify storage temp wokkaman_actionbar.r set value "yellow"
execute if score @s cool2 matches 1.. run data modify storage temp wokkaman_actionbar.q set value "light_purple"
execute if score @s cool3 matches 1.. run data modify storage temp wokkaman_actionbar.f set value "aqua"
execute if score @s cool4 matches 1.. run data modify storage temp wokkaman_actionbar.sr set value "#ff8c8c"
execute if score @s cool5 matches 1.. run data modify storage temp wokkaman_actionbar.sq set value "#7171fc"
execute if score @s cool6 matches 1.. run data modify storage temp wokkaman_actionbar.sf set value "#99ff99"


execute if predicate rauch:skill run function rauch:game/ui/actionbar/cooldis_wokkaman_macro with storage temp wokkaman_actionbar


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
