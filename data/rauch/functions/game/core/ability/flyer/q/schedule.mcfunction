execute if score @s flyerQSchedule matches -58 as @s[tag=flyer_q_ground] run effect clear @s minecraft:levitation
execute if score @s flyerQSchedule matches -58 as @s[tag=flyer_q_ground] unless score @s flyerFSchedule matches 0 run effect give @s minecraft:levitation 2 255 true
execute if score @s flyerQSchedule matches -28 run effect clear @s minecraft:levitation
execute if score @s flyerQSchedule matches -28 run effect give @s minecraft:levitation 1 128 true
execute if score @s flyerQSchedule matches -58 run tag @s remove flyer_q_ground
execute if score @s flyerFSchedule matches -2 run tag @s add allow_cancel
execute if score @s flyerQSchedule matches -28.. as @s[nbt={OnGround:1b}] run function rauch:game/core/ability/flyer/q/hitground
execute if score @s flyerQSchedule matches -57..-29 as @s[tag=allow_cancel] as @s[nbt={OnGround:1b}] run function rauch:game/core/ability/flyer/q/hitground

execute at @s as @e[type=area_effect_cloud,tag=flyerq] if score @s pnum = @p pnum run function rauch:game/core/ability/flyer/q/particle
