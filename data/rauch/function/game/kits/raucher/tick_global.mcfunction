execute as @e[type=armor_stand,tag=r_h] run function rauch:game/kits/raucher/r/heal/heal
execute as @e[type=armor_stand,tag=r_s] run function rauch:game/kits/raucher/r/slow/slow
execute as @e[type=marker,tag=r_h,tag=indicator] run function rauch:game/kits/raucher/r/heal/indicator
execute as @e[type=marker,tag=r_s,tag=indicator] run function rauch:game/kits/raucher/r/slow/indicator
execute as @e[type=marker,tag=r_h,tag=cloud] run function rauch:game/kits/raucher/r/heal/grounded
execute as @e[type=marker,tag=r_s,tag=cloud] run function rauch:game/kits/raucher/r/slow/grounded
