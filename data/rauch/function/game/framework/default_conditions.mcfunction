#bolt
execute as @a[scores={kit=1}] run scoreboard players set @s cool1_target 200
execute as @a[scores={kit=1}] run scoreboard players set @s cool2_target 400
execute as @a[scores={kit=1}] run scoreboard players set @s cool3_target 260
execute as @a[scores={kit=1}] run scoreboard players set @s cool1_respawn 0
execute as @a[scores={kit=1}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=1}] run scoreboard players set @s cool3_respawn 0
#zarzahn
execute as @a[scores={kit=2}] run scoreboard players set @s cool1_target 260
execute as @a[scores={kit=2}] run scoreboard players set @s cool2_target 190
execute as @a[scores={kit=2}] run scoreboard players set @s cool3_target 360
execute as @a[scores={kit=2}] run scoreboard players set @s cool1_respawn 0
execute as @a[scores={kit=2}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=2}] run scoreboard players set @s cool3_respawn 0
#raucher (no r respawn cooldown, its always just set to cool1_target)
execute as @a[scores={kit=3}] run scoreboard players set @s cool1_target 70
execute as @a[scores={kit=3}] run scoreboard players set @s cool2_target 360
execute as @a[scores={kit=3}] run scoreboard players set @s cool3_target 300
execute as @a[scores={kit=3}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=3}] run scoreboard players set @s cool3_respawn 0
execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNum 3
execute as @a[scores={kit=3}] run scoreboard players set @s projectileRMax 3
execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNumRespawn 1
#hacker
execute as @a[scores={kit=4}] run scoreboard players set @s cool1_target 380
execute as @a[scores={kit=4}] run scoreboard players set @s cool2_target 460
#execute as @a[scores={kit=4}] run scoreboard players set @s cool3_target 460
execute as @a[scores={kit=4}] run scoreboard players set @s cool1_respawn 0
execute as @a[scores={kit=4}] run scoreboard players set @s cool2_respawn 0
#execute as @a[scores={kit=4}] run scoreboard players set @s cool3_respawn 460
execute as @a[scores={kit=4}] run scoreboard players set @s hacker_charges 1
#wark
execute as @a[scores={kit=5}] run scoreboard players set @s cool1_target 200
#execute as @a[scores={kit=5}] run scoreboard players set @s cool2_target 340
execute as @a[scores={kit=5}] run scoreboard players set @s cool3_target 200
execute as @a[scores={kit=5}] run scoreboard players set @s cool1_respawn 0
#execute as @a[scores={kit=5}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=5}] run scoreboard players set @s cool3_respawn 0
execute as @a[scores={kit=5}] run scoreboard players set @s wark_charge 0
#teleporter
execute as @a[scores={kit=6}] run scoreboard players set @s cool1_target 340
execute as @a[scores={kit=6}] run scoreboard players set @s cool2_target 440
execute as @a[scores={kit=6}] run scoreboard players set @s cool3_target 340
execute as @a[scores={kit=6}] run scoreboard players set @s cool1_respawn 0
execute as @a[scores={kit=6}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=6}] run scoreboard players set @s cool3_respawn 0
#tank
#execute as @a[scores={kit=7}] run scoreboard players set @s cool1_target 300
execute as @a[scores={kit=7}] run scoreboard players set @s cool2_target 360
execute as @a[scores={kit=7}] run scoreboard players set @s cool3_target 320
#execute as @a[scores={kit=7}] run scoreboard players set @s cool1_respawn 0
execute as @a[scores={kit=7}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=7}] run scoreboard players set @s cool3_respawn 0
#pikka
execute as @a[scores={kit=8}] run scoreboard players set @s cool1_target 400
execute as @a[scores={kit=8}] run scoreboard players set @s cool2_target 360
execute as @a[scores={kit=8}] run scoreboard players set @s cool3_target 280
execute as @a[scores={kit=8}] run scoreboard players set @s cool1_respawn 0
execute as @a[scores={kit=8}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=8}] run scoreboard players set @s cool3_respawn 0
execute as @a[scores={kit=8}] run scoreboard players set @s elytra_cooldown 60
#wokkaman
execute as @a[scores={kit=9}] run scoreboard players set @s cool1_target 160
#execute as @a[scores={kit=9}] run scoreboard players set @s cool2_target 200
execute as @a[scores={kit=9}] run scoreboard players set @s cool3_target 140
execute as @a[scores={kit=9}] run scoreboard players set @s cool4_target 160
execute as @a[scores={kit=9}] run scoreboard players set @s cool5_target 180
execute as @a[scores={kit=9}] run scoreboard players set @s cool6_target 100
execute as @a[scores={kit=9}] run scoreboard players set @s cool1_respawn 0
#execute as @a[scores={kit=9}] run scoreboard players set @s cool2_respawn 0
execute as @a[scores={kit=9}] run scoreboard players set @s cool3_respawn 0
execute as @a[scores={kit=9}] run scoreboard players set @s cool4_respawn 0
execute as @a[scores={kit=9}] run scoreboard players set @s cool5_respawn 0
execute as @a[scores={kit=9}] run scoreboard players set @s cool6_respawn 0
execute as @a[scores={kit=9}] run scoreboard players set @s elytra_cooldown 40
execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_starting_firework_rocket_count 10
execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_starting_rocket_count 0
execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_starting_mace_count 2
execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_max_mace_count 4

scoreboard players set Global gamestart 120
