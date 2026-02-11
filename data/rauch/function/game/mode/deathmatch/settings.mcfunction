scoreboard players set Global gamestart 120

scoreboard players set @a[tag=game] heal 40
effect give @a[tag=game] minecraft:resistance 4 255 true

execute as @a[scores={kit=4}] run scoreboard players set @s hacker_charges 2
execute as @a[scores={kit=5}] run scoreboard players set @s wark_charge 50000
tag @a[tag=game] remove can_respawn