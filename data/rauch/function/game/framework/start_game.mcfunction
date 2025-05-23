# check if there are players in queue
execute unless entity @a[tag=queue] run tellraw @s [{"text":"Game can't be started because there are no players in queue!","color":"red"}]
execute unless entity @a[tag=queue] run return 0

# check if there is someone editing a map
execute if entity @a[tag=edit_map] run tellraw @s [{"text":"Game can't be started because someone is editing a map","color":"red"}]
execute if entity @a[tag=edit_map] run return 0

# check if there is someone editing the lobby
execute if entity @a[tag=edit_lobby] run tellraw @s [{"text":"Game can't be started because someone is editing the lobby","color":"red"}]
execute if entity @a[tag=edit_lobby] run return 0

# game id etc
scoreboard players set Global game_running 1
scoreboard players add Global game_id 1

# create game data storage
data remove storage game_data bolt_hit
data remove storage game_data hacker_r_tag
data remove storage game_data hacker_q_tag
data remove storage game_data wok_bow_tag

# set wokkaman kit
execute if score Global mode matches 5 as @a[tag=queue,team=Red] run scoreboard players set @s kit 9

# removes all offline palyers from the teams while keeping the online players
tag @a[team=Red] add t_red
tag @a[team=Blue] add t_blu
team empty Red
team empty Blue
team join Red @a[tag=t_red]
team join Blue @a[tag=t_blu]
tag @a remove t_red
tag @a remove t_blu

# player ids und setup und so. also calls pregame for each player
scoreboard players reset Global pnum
execute as @a[tag=queue,limit=12] run function rauch:game/framework/teamsetup
scoreboard players reset Global pnum
# potentially left over players
execute as @a[tag=queue] run function rauch:game/framework/leftover
execute if score %enable_delayed_clear global matches 1 run schedule function rauch:game/framework/start_schedule_clear 10t
#mapgedöns
summon marker ~ ~ ~ {Tags:["map","t1"]}
summon marker ~ ~ ~ {Tags:["map","t2"]}
summon marker ~ ~ ~ {Tags:["map","ce"]}
execute as @e[type=marker,tag=map] run function rauch:game/framework/mapsetup

# sorry for bad name but i cant think of anything better rn. it sets the time, weather and particles
function rauch:game/framework/map_setup_2

# bossbars
function rauch:game/ui/bossbar/setplayers
function rauch:game/ui/bossbar/allinvisible

#condition functions
function rauch:game/framework/default_conditions
execute if score Global mode matches 0 run function rauch:game/mode/deathmatch/conditions
execute if score Global mode matches 1 run function rauch:game/mode/king_of_the_hill/conditions
execute if score Global mode matches 2 run function rauch:game/mode/respawn_deathmatch/conditions
execute if score Global mode matches 3 run function rauch:game/mode/practice/conditions
execute if score Global mode matches 4 run function rauch:game/mode/capture_the_flag/conditions
execute if score Global mode matches 5 run function rauch:game/mode/wokkaman/conditions
function rauch:game_settings_override

execute if score Global mode matches 0 run function rauch:game/mode/deathmatch/initialize
execute if score Global mode matches 1 run function rauch:game/mode/king_of_the_hill/initialize
execute if score Global mode matches 2 run function rauch:game/mode/respawn_deathmatch/initialize
execute if score Global mode matches 3 run function rauch:game/mode/practice/initialize
execute if score Global mode matches 4 run function rauch:game/mode/capture_the_flag/initialize
execute if score Global mode matches 5 run function rauch:game/mode/wokkaman/initialize

# elytra bossbar after setup so max is properly set
execute as @a[tag=game] run function rauch:game/ui/bossbar/elytra/set_max
# wokkaman give starting rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_set_starting_rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_give_starting_firework_rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_give_starting_maces
