scoreboard players set Global gamestart 120

scoreboard players set @a[tag=game] heal 40
effect give @a[tag=game] minecraft:resistance 4 255 true

scoreboard players set Global ctf_points_to_win 5
scoreboard players set Global flag_spawn_delay 40
scoreboard players set Global ctf_game_duration 3600
tag @a[tag=game] add can_respawn