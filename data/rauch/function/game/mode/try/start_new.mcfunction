say start
scoreboard players set Global game_running 1
scoreboard players add Global game_id 1
scoreboard players set Global mode 6
scoreboard players reset Global gameend

scoreboard players set try_mode_max_pnum temp 0
# reset game data storage
data remove storage game_data bolt_hit
data remove storage game_data hacker_r_tag
data remove storage game_data hacker_q_tag
data remove storage game_data wok_bow_tag

# it sets the time, weather and particles
function rauch:game/framework/map_setup_2

# game settings
#function rauch:game/mode/default_settings
scoreboard players set Global gamestart 0

#function rauch:game/mode/apply_settings
#function rauch:game_settings_override

#function rauch:game/mode/initialize
scoreboard players set t_i temp 0
function rauch:game/mode/try/setup_game_data_loop
