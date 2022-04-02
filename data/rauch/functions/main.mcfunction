#general
execute as @a[scores={squid=1..}] run function rauch:setupkram
execute as @a[scores={drop=1..}] run function rauch:drop
#lobby
execute as @a[tag=lobby] run function rauch:lobby/lobby
execute as @a[tag=addmap] run function rauch:settings/add_map/addmapui
#game
execute if entity @a[tag=game] run function rauch:game/game
