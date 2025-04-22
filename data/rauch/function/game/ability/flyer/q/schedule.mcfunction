execute if score @s flyerQSchedule matches -58 as @s[tag=flyer_q_ground] run attribute @s minecraft:gravity base set 0
execute if score @s flyerQSchedule matches -58 as @s[tag=flyer_q_ground] unless score @s flyerFSchedule matches 0 at @s run attribute @s minecraft:gravity base set 0.03
execute if score @s flyerQSchedule matches -56 as @s[tag=flyer_q_ground] unless score @s flyerFSchedule matches 0 at @s run effect give @s minecraft:levitation 3 0 true
execute if score @s flyerQSchedule matches -48 run effect clear @s minecraft:levitation
execute if score @s flyerQSchedule matches -45 as @s[tag=flyer_q_ground] unless score @s flyerFSchedule matches 0 at @s run attribute @s minecraft:gravity base set 0.00
execute if score @s flyerQSchedule matches -28 run tag @s remove flyer_q_ground
execute if score @s flyerQSchedule matches -28 run effect clear @s minecraft:levitation
execute if score @s flyerQSchedule matches -28 run attribute @s minecraft:gravity base set 1
#execute if score @s flyerFSchedule matches -2 run tag @s add allow_cancel
execute if score @s flyerQSchedule matches -28.. as @s[nbt={OnGround:1b}] run function rauch:game/ability/flyer/q/hitground
execute if score @s flyerQSchedule matches -57..-29 as @s[tag=allow_cancel] as @s[nbt={OnGround:1b}] run function rauch:game/ability/flyer/q/hitground
execute if score @s flyerQSchedule matches -1.. run attribute @s minecraft:gravity base set 0.08

execute at @s as @e[type=area_effect_cloud,tag=flyerq] if score @s pnum = @p pnum run function rauch:game/ability/flyer/q/particle
