function rauch:game/mechanics/respawn/respawn_main
#execute if entity @a[tag=dead] run function rauch:game/framework/end_game
execute as @a[scores={kit=4,hacker_charges=0}] run scoreboard players set @s hacker_charges 2
execute as @a[scores={kit=5,wark_charge=..99900}] run scoreboard players add @s wark_charge 1000
