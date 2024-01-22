scoreboard players add @s click 1
execute if score @s click matches 3 run data merge entity @s {transformation:{scale:[2,2,2],translation:[0,1,0]},start_interpolation:0,interpolation_duration:20}
execute if score @s click matches 20.. run kill @s
