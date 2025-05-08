#general
execute as @a[scores={drop=1..}] run function rauch:drop
#lobby
execute as @a[tag=lobby] run function rauch:lobby/lobby
execute as @a[tag=edit_map] run function rauch:settings/edit_map/tick
#game
execute if score Global game_running matches 1 run function rauch:game/game
execute as @a[scores={leave=1..}] run function rauch:lobby/rejoin
