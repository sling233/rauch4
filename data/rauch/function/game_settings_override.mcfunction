# In this file, you can override game settings (for every mode). Just uncomment the lines you want.

# If you want some some changes to only apply to certain game modes, use: execute if|unless score Global mode matches <mode_id> run <your_command>
# mode ids: deathmatch is 0, king of the hill is 1, respawn deathmatch is 2, testing mode is 3, capture the flag is 4, wokkaman is 5
# example: execute unless score Global mode matches 3 run scoreboard players set Global gamestart 20
# makes countdown for each mode only 1 second, except testing mode, that has an instant cooldown, so making it 1 second would be annoying
###################################################################################################

# ability cooldowns
# The *_target scores are the cooldown. cool1 is the R ability, cool2 is Q and cool3 is F. The value is in ticks. 20 ticks = 1 second, so eg. 200 ticks = 10 seconds
# The *_respawn scores are the value the cooldown is set to when respawning, unless the cooldown is already lower (currently mostly 0)
# kit 1 is bolt, 2 is zarzahn, 3 is raucher, 4 is hacker, 5 is wark, 6 is teleporter, 7 is tank, 8 is pikka, 9 is wokkaman
# bolt
# execute as @a[scores={kit=1}] run scoreboard players set @s cool1_target 200
# execute as @a[scores={kit=1}] run scoreboard players set @s cool2_target 400
# execute as @a[scores={kit=1}] run scoreboard players set @s cool3_target 260
# execute as @a[scores={kit=1}] run scoreboard players set @s cool1_respawn 0
# execute as @a[scores={kit=1}] run scoreboard players set @s cool2_respawn 0
# execute as @a[scores={kit=1}] run scoreboard players set @s cool3_respawn 0

# zarzahn
# execute as @a[scores={kit=2}] run scoreboard players set @s cool1_target 260
# execute as @a[scores={kit=2}] run scoreboard players set @s cool2_target 190
# execute as @a[scores={kit=2}] run scoreboard players set @s cool3_target 560
# execute as @a[scores={kit=2}] run scoreboard players set @s cool1_respawn 0
# execute as @a[scores={kit=2}] run scoreboard players set @s cool2_respawn 0
# execute as @a[scores={kit=2}] run scoreboard players set @s cool3_respawn 0

# raucher (cool1 is how long it takes for 1 cloud to regenerate
# projectileRMax is how many clouds a raucher can have and projectileRNum is how many they spawn with
# no r respawn cooldown, its always just set to cool1_target)
# execute as @a[scores={kit=3}] run scoreboard players set @s cool1_target 140
# execute as @a[scores={kit=3}] run scoreboard players set @s cool2_target 360
# execute as @a[scores={kit=3}] run scoreboard players set @s cool3_target 300
# execute as @a[scores={kit=3}] run scoreboard players set @s cool2_respawn 0
# execute as @a[scores={kit=3}] run scoreboard players set @s cool3_respawn 0
# execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNum 3
# execute as @a[scores={kit=3}] run scoreboard players set @s projectileRMax 3
# execute as @a[scores={kit=3}] run scoreboard players set @s projectileRNumRespawn 1

# hacker (has no normal f cooldown.
# hacker_charges is how many charges a hacker has at the start of the game)
# execute as @a[scores={kit=4}] run scoreboard players set @s cool1_target 380
# execute as @a[scores={kit=4}] run scoreboard players set @s cool2_target 460
# execute as @a[scores={kit=4}] run scoreboard players set @s cool1_respawn 0
# execute as @a[scores={kit=4}] run scoreboard players set @s cool2_respawn 0
# execute as @a[scores={kit=4}] run scoreboard players set @s hacker_charges 1

# wark (has no normal Q cooldown. Q cannot be customized, at least not yet.
# wark_charge is how much charge a wark has at the start of the game (1000 = 1% charge))
# execute as @a[scores={kit=5}] run scoreboard players set @s cool1_target 200
# execute as @a[scores={kit=5}] run scoreboard players set @s cool3_target 200
# execute as @a[scores={kit=5}] run scoreboard players set @s cool1_respawn 0
# execute as @a[scores={kit=5}] run scoreboard players set @s cool3_respawn 0
# execute as @a[scores={kit=5}] run scoreboard players set @s wark_charge 0

# teleporter
# execute as @a[scores={kit=6}] run scoreboard players set @s cool1_target 280
# execute as @a[scores={kit=6}] run scoreboard players set @s cool2_target 440
# execute as @a[scores={kit=6}] run scoreboard players set @s cool3_target 340
# execute as @a[scores={kit=6}] run scoreboard players set @s cool1_respawn 0
# execute as @a[scores={kit=6}] run scoreboard players set @s cool2_respawn 0
# execute as @a[scores={kit=6}] run scoreboard players set @s cool3_respawn 0

# tank (has no normal R cooldown)
# execute as @a[scores={kit=7}] run scoreboard players set @s cool2_target 360
# execute as @a[scores={kit=7}] run scoreboard players set @s cool3_target 320
# execute as @a[scores={kit=7}] run scoreboard players set @s cool2_respawn 0
# execute as @a[scores={kit=7}] run scoreboard players set @s cool3_respawn 0

# pikka (elytra_cooldown specifies how many ticks pikka cant use their elytra after using it and landing)
# execute as @a[scores={kit=8}] run scoreboard players set @s cool1_target 400
# execute as @a[scores={kit=8}] run scoreboard players set @s cool2_target 360
# execute as @a[scores={kit=8}] run scoreboard players set @s cool3_target 280
# execute as @a[scores={kit=8}] run scoreboard players set @s cool1_respawn 0
# execute as @a[scores={kit=8}] run scoreboard players set @s cool2_respawn 0
# execute as @a[scores={kit=8}] run scoreboard players set @s cool3_respawn 0
# execute as @a[scores={kit=8}] run scoreboard players set @s elytra_cooldown 60

# wokkaman (cool4 is shift-R, cool5 is shift-Q, cool6 is shift-F
# Has no q cooldown.
# elytra_cooldown works the same as pikkas
# wokkaman_starting_rocket_count is the starting number of rockets (the rotating ones)
# wokkaman_starting_firework_rocket_count is the starting number of firework rockets
# wokkaman_starting_mace_count is the starting number of maces
# wokkaman_max_mace_count is the maximum number of maces
# execute as @a[scores={kit=9}] run scoreboard players set @s cool1_target 160
# execute as @a[scores={kit=9}] run scoreboard players set @s cool3_target 240
# execute as @a[scores={kit=9}] run scoreboard players set @s cool4_target 200
# execute as @a[scores={kit=9}] run scoreboard players set @s cool5_target 200
# execute as @a[scores={kit=9}] run scoreboard players set @s cool6_target 60
# execute as @a[scores={kit=9}] run scoreboard players set @s cool1_respawn 0
# execute as @a[scores={kit=9}] run scoreboard players set @s cool3_respawn 0
# execute as @a[scores={kit=9}] run scoreboard players set @s cool4_respawn 0
# execute as @a[scores={kit=9}] run scoreboard players set @s cool5_respawn 0
# execute as @a[scores={kit=9}] run scoreboard players set @s cool6_respawn 0
# execute as @a[scores={kit=9}] run scoreboard players set @s elytra_cooldown 40
# execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_starting_rocket_count 0
# execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_starting_firework_rocket_count 10
# execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_starting_mace_count 2
# execute as @a[scores={kit=9}] run scoreboard players set @s wokkaman_max_mace_count 4


# Delay before game starts (countdown) in ticks (so 120 ticks = 5 seconds)
# scoreboard players set Global gamestart 120


# Number of "points" each team has in King of the Hill. First team at 0 loses.
# At neutral control, each team loses 100 per tick, at full control one team loses 200 the other 0
# For neutral control 2000 points = 1 second (20 ticks = 1 second) so 300000 points = 150 seconds = 2:30 min
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
