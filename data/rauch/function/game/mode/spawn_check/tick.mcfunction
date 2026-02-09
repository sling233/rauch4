scoreboard players add spawn_check_timer global 1
execute if score spawn_check_timer global matches 20 as @a[tag=game] run function rauch:game/framework/tp_to_red_spawn
execute if score spawn_check_timer global matches 40 as @a[tag=game] run function rauch:game/framework/tp_to_blue_spawn
execute if score spawn_check_timer global matches 60 as @a[tag=game] run function rauch:game/framework/tp_to_center
execute if score spawn_check_timer global matches 80 as @a[tag=game] run function rauch:game/framework/end_game