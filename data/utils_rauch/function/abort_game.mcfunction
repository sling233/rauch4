title @a title {"text":"Game Aborted","color":"yellow"}
title @a subtitle ""
tellraw @a {"text":"The game was aborted","color":"red"}

scoreboard players set Global game_running 1
scoreboard players set Global gameend 29
