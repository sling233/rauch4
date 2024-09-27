effect clear @s minecraft:resistance
tellraw @a[tag=game] [{"text":"Practice mode: No Cooldowns, instant respawn. To end the game, run this command: ","color":"yellow"},{"text":"/function utils_rauch:abort_game","clickEvent":{"action":"suggest_command","value":"/function utils_rauch:abort_game"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to suggest command"}]},"color":"gold"}]
