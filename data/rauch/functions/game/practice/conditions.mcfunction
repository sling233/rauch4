scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
effect clear @s minecraft:resistance
scoreboard players reset Global gamestart
tellraw @a [{"text":"[Testing Mode]: The game ends as soon as someone dies","color":"yellow"}]
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
