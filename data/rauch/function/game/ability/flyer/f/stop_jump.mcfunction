attribute @s minecraft:gravity base reset
effect clear @s minecraft:levitation
execute if score @s flyerQSchedule matches ..-1 run tag @s remove flyer_q_ground
execute if score @s flyerQSchedule matches ..-1 run tag @s add allow_cancel
