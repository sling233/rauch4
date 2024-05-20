scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
effect clear @s minecraft:resistance
scoreboard players reset Global gamestart

execute as @a[scores={kit=1}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=1}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=1}] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=2}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=2}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=2}] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=3}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=3}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=3}] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=4}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=4}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=4}] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=5}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=5}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=5}] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=6}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=6}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=6}] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=7}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=7}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=7}] run scoreboard players set @s cool3_target 10

execute as @a[scores={kit=8}] run scoreboard players set @s cool1_target 10
execute as @a[scores={kit=8}] run scoreboard players set @s cool2_target 10
execute as @a[scores={kit=8}] run scoreboard players set @s cool3_target 10
execute as @a[scores={kit=8}] run scoreboard players set @s elytra_cooldown 10

#execute as @a[scores={kit=9}] run scoreboard players set @s cool1_target 10
#execute as @a[scores={kit=9}] run scoreboard players set @s cool2_target 10
#execute as @a[scores={kit=9}] run scoreboard players set @s cool3_target 10

tellraw @a[tag=game] [{"text":"Practice mode: No Cooldowns, instant respawn. To end the game, run this command: ","color":"yellow"},{"text":"/function utils_rauch:abort_game","clickEvent":{"action":"suggest_command","value":"/function utils_rauch:abort_game"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to suggest command"}]},"color":"gold"}]
