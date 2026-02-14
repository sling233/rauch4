function rauch:macros/foreach {for_path:"map_data maps",for_function:"rauch:settings/versions/maps/get_id"}
execute unless score #t_map_update_found temp matches 1 run tellraw @a {"text":"No Updates found","color":"yellow"}
scoreboard players reset #t_map_update_found temp
