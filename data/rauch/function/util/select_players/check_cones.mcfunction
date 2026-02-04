scoreboard players set t_success temp 0

execute as @a[tag=t_selectable] run function rauch:util/select_players/player_in_cone_20
execute if score t_success temp matches 1 run return 1
execute as @a[tag=t_selectable] run function rauch:util/select_players/player_in_cone_11
execute if score t_success temp matches 1 run return 1
execute as @a[tag=t_selectable] run function rauch:util/select_players/player_in_cone_7
execute if score t_success temp matches 1 run return 1
execute as @a[tag=t_selectable] run function rauch:util/select_players/player_in_cone_4
execute if score t_success temp matches 1 run return 1
execute as @a[tag=t_selectable,distance=..5] run function rauch:util/select_players/player_in_cone_2
execute if score t_success temp matches 1 run return 1
execute as @a[tag=t_selectable,distance=..3] run function rauch:util/select_players/player_in_cone_hor_3
execute if score t_success temp matches 1 run return 1
execute as @a[tag=t_selectable,distance=..1.3] run function rauch:util/select_players/player_in_cone_hor_1.5
execute if score t_success temp matches 1 run return 1
execute as @a[tag=t_selectable,distance=..0.6] run function rauch:util/select_players/player_close
execute if score t_success temp matches 1 run return 1

return fail