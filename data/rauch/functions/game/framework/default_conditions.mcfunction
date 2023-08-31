 # raucher starting number of clouds and max number of clouds
execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNum 2
execute as @a[scores={kit=3}] run scoreboard players set @s projectileRMax 2
# bolt cooldowns (r,q,f)
execute as @a[scores={kit=1}] run scoreboard players set @s cool1_target 200
execute as @a[scores={kit=1}] run scoreboard players set @s cool2_target 500
execute as @a[scores={kit=1}] run scoreboard players set @s cool3_target 320
# zarzahn cooldowns (r,q,f)
execute as @a[scores={kit=2}] run scoreboard players set @s cool1_target 320
execute as @a[scores={kit=2}] run scoreboard players set @s cool2_target 380
execute as @a[scores={kit=2}] run scoreboard players set @s cool3_target 600
# raucher cooldowns (r,q,f)
execute as @a[scores={kit=3}] run scoreboard players set @s cool1_target 300
execute as @a[scores={kit=3}] run scoreboard players set @s cool2_target 400
execute as @a[scores={kit=3}] run scoreboard players set @s cool3_target 200
# hacker cooldowns (r,q,f)
execute as @a[scores={kit=4}] run scoreboard players set @s cool1_target 460
execute as @a[scores={kit=4}] run scoreboard players set @s cool2_target 380
execute as @a[scores={kit=4}] run scoreboard players set @s cool3_target 460
# wark cooldowns (r,q,f)
execute as @a[scores={kit=5}] run scoreboard players set @s cool1_target 480
execute as @a[scores={kit=5}] run scoreboard players set @s cool2_target 340
execute as @a[scores={kit=5}] run scoreboard players set @s cool3_target 260
# teleporter cooldowns (r,q,f)
#execute as @a[scores={kit=6}] run scoreboard players set @s cool1_target 460
execute as @a[scores={kit=6}] run scoreboard players set @s cool1_target 340
execute as @a[scores={kit=6}] run scoreboard players set @s cool2_target 520
execute as @a[scores={kit=6}] run scoreboard players set @s cool3_target 500
# tank cooldowns (r,q,f)
execute as @a[scores={kit=7}] run scoreboard players set @s cool1_target 300
execute as @a[scores={kit=7}] run scoreboard players set @s cool2_target 420
execute as @a[scores={kit=7}] run scoreboard players set @s cool3_target 520
# pikka cooldowns (r,q,f) and elytra cooldown
execute as @a[scores={kit=8}] run scoreboard players set @s cool1_target 500
execute as @a[scores={kit=8}] run scoreboard players set @s cool2_target 450
execute as @a[scores={kit=8}] run scoreboard players set @s cool3_target 280
execute as @a[scores={kit=8}] run scoreboard players set @s elytra_cooldown 80
