execute unless score @s cool5 matches 0 run return 1

tag @s add wok_stomp_search
#effect clear @s minecraft:levitation
#effect give @s minecraft:levitation 1 190 true
scoreboard players operation @s cool5 = @s cool5_target
