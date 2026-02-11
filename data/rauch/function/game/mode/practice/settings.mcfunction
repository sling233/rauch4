scoreboard players set Global gamestart 0
scoreboard players set @a[tag=game] heal 40

tag @a[tag=game] add can_respawn

execute as @a[tag=game] run scoreboard players set @s cool1_target 10
execute as @a[tag=game] run scoreboard players set @s cool2_target 10
execute as @a[tag=game] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=8..9}] run scoreboard players set @s elytra_cooldown 10

execute as @a[scores={kit=9}] run scoreboard players set @s cool4_target 10
execute as @a[scores={kit=9}] run scoreboard players set @s cool5_target 10
execute as @a[scores={kit=9}] run scoreboard players set @s cool6_target 10
