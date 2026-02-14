# game id etc
scoreboard players set Global game_running 1
scoreboard players add Global game_id 1
scoreboard players operation Global mode = selected_mode global
scoreboard players reset Global gameend

# create game data storage
data remove storage game_data bolt_hit
data remove storage game_data hacker_r_tag
data remove storage game_data hacker_q_tag
data remove storage game_data wok_bow_tag


# player ids etc.
scoreboard players reset Global pnum
execute as @a[tag=queue,limit=12] run function rauch:game/framework/technical_player_setup
scoreboard players reset Global pnum
# potentially left over players
execute as @a[tag=queue] run function rauch:game/framework/leftover


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


# map setup
# sorry for bad name but i cant think of anything better rn. it sets the time, weather and particles
function rauch:game/framework/map_setup_2


# game settings
# basic player setup (stuff that depends on the kit / mode)
execute as @a[tag=game] run function rauch:game/framework/basic_player_setup
# mode specific settings that effect players or are settings initialize has to react to
function rauch:game/mode/apply_settings

# kit specific init stuff that has to react to changing settings from the mode. No settings here.
execute as @a[tag=game] run function rauch:game/kits/post_setup

# initialize the mode, fixed, no settings in here
function rauch:game/mode/initialize

execute if score %enable_delayed_clear global matches 1 run schedule function rauch:game/framework/start_schedule_clear 10t

