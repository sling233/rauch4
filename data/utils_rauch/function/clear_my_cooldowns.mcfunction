scoreboard players set @s[tag=game] cool1 1
scoreboard players set @s[tag=game] cool2 1
scoreboard players set @s[tag=game] cool3 1
scoreboard players set @s[tag=game,scores={kit=4}] hacker_charges 2
scoreboard players set @s[tag=game,scores={kit=5}] wark_charge 100000
scoreboard players set @s[tag=game,scores={kit=8}] elytra 1
scoreboard players set @s[tag=game,scores={kit=9}] elytra 1
execute as @s[tag=game,scores={kit=9}] run scoreboard players set t_add_rocket_count temp 4
execute as @s[tag=game,scores={kit=9}] run function rauch:game/ability/wokkaman/q/add_n_rockets
