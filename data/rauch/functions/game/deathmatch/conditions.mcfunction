execute if score Global mode matches 0 run scoreboard objectives setdisplay sidebar.team.red
execute if score Global mode matches 0 run scoreboard objectives setdisplay sidebar.team.blue
scoreboard players set Global gamestart 120

execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNum 2
execute as @a[scores={kit=3}] run scoreboard players set @s projectileRMax 2
execute as @a[scores={kit=5}] run scoreboard players set @s projectileRNum 20
execute as @a[scores={kit=5}] run scoreboard players set @s projectileRMax 20

execute as @a[scores={kit=1}] run scoreboard players set @s cool1_target 200
execute as @a[scores={kit=1}] run scoreboard players set @s cool2_target 500
execute as @a[scores={kit=1}] run scoreboard players set @s cool3_target 320

execute as @a[scores={kit=2}] run scoreboard players set @s cool1_target 320
execute as @a[scores={kit=2}] run scoreboard players set @s cool2_target 380
execute as @a[scores={kit=2}] run scoreboard players set @s cool3_target 800

execute as @a[scores={kit=3}] run scoreboard players set @s cool1_target 300
execute as @a[scores={kit=3}] run scoreboard players set @s cool2_target 400
execute as @a[scores={kit=3}] run scoreboard players set @s cool3_target 300

execute as @a[scores={kit=4}] run scoreboard players set @s cool1_target 300
execute as @a[scores={kit=4}] run scoreboard players set @s cool2_target 380
execute as @a[scores={kit=4}] run scoreboard players set @s cool3_target 460

execute as @a[scores={kit=5}] run scoreboard players set @s cool1_target 200
execute as @a[scores={kit=5}] run scoreboard players set @s cool2_target 320
execute as @a[scores={kit=5}] run scoreboard players set @s cool3_target 800

execute as @a[scores={kit=6}] run scoreboard players set @s cool1_target 240
execute as @a[scores={kit=6}] run scoreboard players set @s cool2_target 520
execute as @a[scores={kit=6}] run scoreboard players set @s cool3_target 800

execute as @a[scores={kit=7}] run scoreboard players set @s cool1_target 520
execute as @a[scores={kit=7}] run scoreboard players set @s cool2_target 420
execute as @a[scores={kit=7}] run scoreboard players set @s cool3_target 300

execute as @a[scores={kit=8}] run scoreboard players set @s cool1_target 200
execute as @a[scores={kit=8}] run scoreboard players set @s cool2_target 450
execute as @a[scores={kit=8}] run scoreboard players set @s cool3_target 600
