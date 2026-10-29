scoreboard players set t_was_launched_this_tick temp 1
execute as @s[tag=!can_be_launched] run return 0
execute at @s run summon wind_charge ~ ~ ~ {Motion:[0.0,-1.0,0.0],Tags:["remove_on_game_end"]}
tag @s remove can_be_launched
