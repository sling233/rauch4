execute if entity @a[tag=dead] run function rauch:game/framework/end_game
execute as @a[scores={kit=4,hacker_charges=0}] run scoreboard players set @s hacker_charges 2
