execute if score @p pnum matches 1 run tag @s add boltHitBy1
execute if score @p pnum matches 2 run tag @s add boltHitBy2
execute if score @p pnum matches 3 run tag @s add boltHitBy3
execute if score @p pnum matches 4 run tag @s add boltHitBy4
execute if score @p pnum matches 5 run tag @s add boltHitBy5
execute if score @p pnum matches 6 run tag @s add boltHitBy6
execute if score @p pnum matches 7 run tag @s add boltHitBy7
execute if score @p pnum matches 8 run tag @s add boltHitBy8
execute if score @p pnum matches 9 run tag @s add boltHitBy9
execute if score @p pnum matches 10 run tag @s add boltHitBy10
execute if score @p pnum matches 11 run tag @s add boltHitBy11
execute if score @p pnum matches 12 run tag @s add boltHitBy12

effect give @s minecraft:glowing 40 1 true
execute as @p at @s run playsound minecraft:entity.arrow.hit_player master @s
