attribute @s minecraft:generic.gravity base set 0.08
effect clear @s minecraft:levitation
execute if score @s flyerQSchedule matches ..-1 run tag @s remove flyer_q_ground
execute if score @s flyerQSchedule matches ..-1 run scoreboard players set @s flyerQSchedule -27
