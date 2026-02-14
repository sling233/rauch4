# game id etc
scoreboard players set Global game_running 1
scoreboard players add Global game_id 1
scoreboard players reset Global gameend

# reset game data storage
data remove storage game_data bolt_hit
data remove storage game_data hacker_r_tag
data remove storage game_data hacker_q_tag
data remove storage game_data wok_bow_tag


# player ids etc.
# mode id 6 is try out kit mode, start that with no players
scoreboard players reset t_pnum temp
execute unless score Global mode matches 6 as @a[tag=queue,limit=12] run function rauch:game/framework/technical_player_setup
scoreboard players reset t_pnum temp
# potentially left over players
execute unless score Global mode matches 6 as @a[tag=queue] run function rauch:game/framework/leftover

# bossbars
function rauch:game/ui/bossbar/setplayers
function rauch:game/ui/bossbar/allinvisible

# team setup
# removes all offline palyers from the teams while keeping the online players
tag @a[team=Red] add t_red
tag @a[team=Blue] add t_blu
team empty Red
team empty Blue
team join Red @a[tag=t_red]
team join Blue @a[tag=t_blu]
tag @a remove t_red
tag @a remove t_blu
function rauch:game/mode/team_setup

execute as @a[tag=game] run function rauch:game/framework/player_setup

# mode "settings" (in the future there could be a way to change these) 
function rauch:game/mode/apply_settings
# initialize the mode, fixed, no settings in here
function rauch:game/mode/initialize

execute if score %enable_delayed_clear global matches 1 run schedule function rauch:game/framework/start_schedule_clear 10t

# sets the map time, weather and particles
function rauch:game/framework/apply_map_options
