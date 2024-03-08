function rauch:macros/foreach {for_path:"map_data maps",for_function:"rauch:settings/versions/maps/map_check_macro"}
execute unless score #t_map_update_found global matches 1 run tellraw @s {"text":"No Updates found","color":"yellow"}
scoreboard players reset #t_map_update_found global
