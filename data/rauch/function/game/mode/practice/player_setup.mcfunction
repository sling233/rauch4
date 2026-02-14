scoreboard players set @s heal 40
tag @s add can_respawn

scoreboard players set @s cool1_target 10
scoreboard players set @s cool2_target 10
scoreboard players set @s cool3_target 10

execute as @s[scores={kit=8..9}] run scoreboard players set @s elytra_cooldown 10

execute as @s[scores={kit=9}] run scoreboard players set @s cool4_target 10
execute as @s[scores={kit=9}] run scoreboard players set @s cool5_target 10
execute as @s[scores={kit=9}] run scoreboard players set @s cool6_target 10
