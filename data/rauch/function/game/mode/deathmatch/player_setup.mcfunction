scoreboard players set @s heal 40
effect give @s minecraft:resistance 4 255 true
tag @s add can_respawn

execute as @s[scores={kit=4}] run scoreboard players set @s hacker_charges 2
execute as @s[scores={kit=5}] run scoreboard players set @s wark_charge 50000