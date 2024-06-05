# In this file, you can override game settings (for every mode). Just uncomment the lines you want.
###################################################################################################
# ability cooldowns
# The _target scores are the cooldown. cool1 is the R ability, cool2 is Q and cool3 is F. The value is in ticks. 20 ticks = 1 second, so eg. 200 ticks = 10 seconds
# The _respawn scores are the value the cooldown is set to when respawning, unless the cooldown is already lower (usually half the target value)
# kit 1 is bolt, 2 is zarzahn, 3 is raucher, 4 is hacker, 5 is wark, 6 is teleporter, 7 is tank, 8 is pikka, 9 is wokkaman
# bolt
# execute as @a[scores={kit=1}] run scoreboard players set @s cool1_target 200
# execute as @a[scores={kit=1}] run scoreboard players set @s cool2_target 500
# execute as @a[scores={kit=1}] run scoreboard players set @s cool3_target 320
# execute as @a[scores={kit=1}] run scoreboard players set @s cool1_respawn 100
# execute as @a[scores={kit=1}] run scoreboard players set @s cool2_respawn 250
# execute as @a[scores={kit=1}] run scoreboard players set @s cool3_respawn 160
# zarzahn
# execute as @a[scores={kit=2}] run scoreboard players set @s cool1_target 300
# execute as @a[scores={kit=2}] run scoreboard players set @s cool2_target 380
# execute as @a[scores={kit=2}] run scoreboard players set @s cool3_target 600
# execute as @a[scores={kit=2}] run scoreboard players set @s cool1_respawn 150
# execute as @a[scores={kit=2}] run scoreboard players set @s cool2_respawn 100
# execute as @a[scores={kit=2}] run scoreboard players set @s cool3_respawn 300
# raucher (cool1 is how long it takes for 1 cloud to regenerate. projectileRMax is how many clouds a raucher can have and projectileRNum is how many they spawn with)
# execute as @a[scores={kit=3}] run scoreboard players set @s cool1_target 160
# execute as @a[scores={kit=3}] run scoreboard players set @s cool2_target 400
# execute as @a[scores={kit=3}] run scoreboard players set @s cool3_target 300
# execute as @a[scores={kit=3}] run scoreboard players set @s cool1_respawn 160
# execute as @a[scores={kit=3}] run scoreboard players set @s cool2_respawn 200
# execute as @a[scores={kit=3}] run scoreboard players set @s cool3_respawn 150
# execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNum 3
# execute as @a[scores={kit=3}] run scoreboard players set @s projectileRMax 3
# execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNumRespawn 1
# hacker
# execute as @a[scores={kit=4}] run scoreboard players set @s cool1_target 380
# execute as @a[scores={kit=4}] run scoreboard players set @s cool2_target 460
# execute as @a[scores={kit=4}] run scoreboard players set @s cool3_target 460
# execute as @a[scores={kit=4}] run scoreboard players set @s cool1_respawn 150
# execute as @a[scores={kit=4}] run scoreboard players set @s cool2_respawn 230
# execute as @a[scores={kit=4}] run scoreboard players set @s cool3_respawn 460
# wark (has no normal Q cooldown. Q cannot be customized, at least not yet)
# execute as @a[scores={kit=5}] run scoreboard players set @s cool1_target 480
# execute as @a[scores={kit=5}] run scoreboard players set @s cool3_target 260
# execute as @a[scores={kit=5}] run scoreboard players set @s cool1_respawn 240
# execute as @a[scores={kit=5}] run scoreboard players set @s cool3_respawn 100
# teleporter
# execute as @a[scores={kit=6}] run scoreboard players set @s cool1_target 340
# execute as @a[scores={kit=6}] run scoreboard players set @s cool2_target 520
# execute as @a[scores={kit=6}] run scoreboard players set @s cool3_target 500
# execute as @a[scores={kit=6}] run scoreboard players set @s cool1_respawn 100
# execute as @a[scores={kit=6}] run scoreboard players set @s cool2_respawn 50
# execute as @a[scores={kit=6}] run scoreboard players set @s cool3_respawn 200
# tank (has no R cooldown)
# execute as @a[scores={kit=7}] run scoreboard players set @s cool2_target 420
# execute as @a[scores={kit=7}] run scoreboard players set @s cool3_target 520
# execute as @a[scores={kit=7}] run scoreboard players set @s cool2_respawn 210
# execute as @a[scores={kit=7}] run scoreboard players set @s cool3_respawn 200
# pikka (elytra_cooldown specifies how many ticks a pikka cant use their elytra after using it and landing)
# execute as @a[scores={kit=8}] run scoreboard players set @s cool1_target 500
# execute as @a[scores={kit=8}] run scoreboard players set @s cool2_target 450
# execute as @a[scores={kit=8}] run scoreboard players set @s cool3_target 280
# execute as @a[scores={kit=8}] run scoreboard players set @s cool1_respawn 1
# execute as @a[scores={kit=8}] run scoreboard players set @s cool2_respawn 180
# execute as @a[scores={kit=8}] run scoreboard players set @s cool3_respawn 1
# execute as @a[scores={kit=8}] run scoreboard players set @s elytra_cooldown 80
# wokkaman (cooldowns mostly not implemented)
# execute as @a[scores={kit=9}] run scoreboard players set @s cool1_target 10
# execute as @a[scores={kit=9}] run scoreboard players set @s cool2_target 200
# execute as @a[scores={kit=9}] run scoreboard players set @s cool3_target 10
# execute as @a[scores={kit=9}] run scoreboard players set @s cool1_respawn 10
# execute as @a[scores={kit=9}] run scoreboard players set @s cool2_respawn 10
# execute as @a[scores={kit=9}] run scoreboard players set @s cool3_respawn 10


# Delay before game starts (countdown) in ticks (so 120 ticks = 5 seconds)
# scoreboard players set Global gamestart 20


# Number of "points" each team has in King of the Hill. First team at 0 loses.
# At neutral control, each team loses 100 per tick, at full control one team loses 200 the other 0
# For neutral control 2000 points = 1 second (so 300000 points = 150 seconds = 2:30 min)
# The points are displayed as seconds
# scoreboard players set Global time_red 300000
# scoreboard players set Global time_blue 300000


# How many kills are needed for a team to win respawn deathmatch
# scoreboard players set Global rd_kills_to_win 20


# Capture the Flag:
# ctf_points_to_win: how many points win a game
# flag_spawn_delay: the delay for the flag after spawning to be able to be picked up in ticks (so 40 ticks = 2 seconds)
# ctf_game_duration: the max duration of the game in ticks (so 3600 = 180 seconds = 3 minutes)
# scoreboard players set Global ctf_points_to_win 5
# scoreboard players set Global flag_spawn_delay 40
# scoreboard players set Global ctf_game_duration 3600
# this one ^ doesn't work, ill fix it someday
