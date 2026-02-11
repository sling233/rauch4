execute as @a[team=Red,tag=game] run function rauch:game/framework/tp_to_red_spawn
execute as @a[team=Blue,tag=game] run function rauch:game/framework/tp_to_blue_spawn
execute at @a[tag=game] run spawnpoint @s ~ ~ ~


tellraw @a[tag=game] [{"text":"Practice mode: No Cooldowns, instant respawn. To end the game, run this command: ","color":"yellow"},{"text":"/function utils_rauch:abort_game","click_event":{"action":"suggest_command","command":"/function utils_rauch:abort_game"},"hover_event":{"action":"show_text","value":[{"text":"Click to suggest command"}]},"color":"gold"}]
