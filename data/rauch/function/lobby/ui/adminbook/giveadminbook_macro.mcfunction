$data modify storage rauch temp.pages set value [\
    [\
        "",{"text":"     Gamemodes\n\n","bold":true},{"text":"Mode:\n","color":"gold"},\
        \
        {"text":"[","color":"dark_gray"},{"text":"Deathmatch","color":"$(deathmatch)","hover_event":{"action":"show_text","value":[\
        {"text":"Eliminate the other team. Simple as that.","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 1"}},{"text":"]\n","color":"dark_gray"},\
        \
        {"text":"[","color":"dark_gray"},{"text":"King of the Hill","color":"$(koth)","hover_event":{"action":"show_text","value":[\
        {"text":"Control the center to lose less points than the enemy team. First team with no points left loses.\n\nThe amount of \
        points each team has at the beginning of the game can be customized by an admin in the rauch:game_settings_override function.","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 2"}},{"text":"]\n","color":"dark_gray"},\
        \
        {"text":"[","color":"dark_gray"},{"text":"Respawn Deathmatch","color":"$(respawn)","hover_event":{"action":"show_text","value":[\
        {"text":"The first team to 20 kills wins.\nThe amount of kills needed to win can be customized by an admin in the \
        rauch:game_settings_override function.","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 3"}},{"text":"]\n","color":"dark_gray"},\
        \
        {"text":"[","color":"dark_gray"},{"text":"Testing Mode","color":"$(testing)","hover_event":{"action":"show_text","value":[\
        {"text":"Mode for development and testing. No ability cooldown, instant respawn and game start. To end, run this command: \
        /function utils_rauch:abort_game","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 4"}},{"text":"]\n","color":"dark_gray"},\
        \
        {"text":"[","color":"dark_gray"},{"text":"Capture The Flag","color":"$(ctf)","hover_event":{"action":"show_text","value":[\
        {"text":"Transport the Flag to the Enemy Base to get points. The team with the most points after 3:00 or that reaches 5 points first wins.\n\
        In case of a tie, the team that has transported the flag the closest to the enemy base wins. If the losing team holds the flag, they are given \
        a chance to score a point to win (overtime), otherwise they lose.\n\nCertain values can be customized by an admin in the \
        rauch:game_settings_override function. Global ctf_game_duration (in ticks), Global ctf_points_to_win, Global flag_spawn_delay (in ticks).","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 5"}},{"text":"]\n","color":"dark_gray"},\
        \
        {"text":"[","color":"dark_gray"},{"text":"Wokkaman","color":"$(wokkaman)","hover_event":{"action":"show_text","value":[\
        {"text":"Work In Progress, for fun mode\n As of now, the player who manually selects team red will become the Wokkaman, an intentionally \
        overpowered class. The goal of the blue team is to kill the Wokkaman, the Wokkaman player just tries to get as many kills as they can, \
        they cannot \"win\". The game ends when the Wokkaman is killed. Multiple players can be a Wokkaman, as of now about 3 blue players \
        per wokkaman seems fun.","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 6"}},{"text":"]\n","color":"dark_gray"}\
    ],\
    [\
        {"text":"    "},{"text":"Map Selector\n","bold":true}\
    ]\
]

# mapselector
execute store result score t_map_count temp run data get storage map_data maps
execute if data storage map_data active.index store result score t_active_map_idx temp run data get storage map_data active.index
# no maps
execute if score t_map_count temp matches 0 run data modify storage rauch temp.pages[1] append value [\
    {"text":"\nNo Maps","color":"dark_gray"}\
]
# else generate map entries
execute if score t_map_count temp matches 1.. run function rauch:macros/foreach {for_path:"map_data maps",for_function:"rauch:lobby/ui/adminbook/mapselector_macro"}

scoreboard players reset t_map_count temp
scoreboard players reset t_active_map_idx temp

# finish mapselector
execute store result score t_page_count temp run data get storage rauch temp.pages
scoreboard players remove t_page_count temp 1
execute store result storage rauch temp.last_page_idx int 1 run scoreboard players get t_page_count temp
function rauch:lobby/ui/adminbook/mapselector_finish with storage rauch temp
scoreboard players reset t_page_count temp

# append settings page
data modify storage rauch temp.pages append value [\
  "",{"text":"      Settings","bold":true},\
  {"text":"\nLobby Settings","color":"dark_blue","hover_event":{"action":"show_text","value":[\
  {"text":"Click to add or edit lobby data, or to spawn the official lobby"}]},"click_event":\
  {"action":"run_command","command":"/function rauch:settings/edit_lobby/edit_initialize_check"}},\
  {"text":"\nEveryone to Lobby","color":"dark_blue","hover_event":{"action":"show_text","value":[\
    {"text":"Moves every online player to the lobby"}]},"click_event":\
    {"action":"run_command","command":"/function rauch:settings/movetolobby/movetolobby"}},\
  {"text":"\n\nCheck for Updates","color":"black","bold":true},\
  {"text":"\n[Pack] ","color":"dark_blue","hover_event":{"action":"show_text","value":[\
    {"text":"Click if you have a new version of the datapack in the world folder"}]},"click_event":\
    {"action":"run_command","command":"/function rauch:settings/versions/version_check"}},\
  {"text":"[Maps] ","color":"dark_blue","hover_event":{"action":"show_text","value":[\
    {"text":"Click to check for new map versions"}]},"click_event":\
    {"action":"run_command","command":"/function rauch:settings/versions/maps/map_check"}},\
  {"text":"[Lobby]","color":"dark_blue","hover_event":{"action":"show_text","value":[\
    {"text":"Click to check for new lobby version"}]},"click_event":\
    {"action":"run_command","command":"/function rauch:settings/versions/lobby_check"}},\
  {"text":"\n\nPrint Guide","color":"dark_blue","hover_event":{"action":"show_text","value":[\
    {"text":"Shows the Setup Guide"}]},"click_event":\
    {"action":"run_command","command":"/function rauch:tutorial/tutorial"}},\
  {"text":"\nRemove objectives","color":"dark_blue","click_event":\
    {"action":"run_command","command":"/function rauch:settings/removeobj"},\
    "hover_event":{"action":"show_text","value":"This will remove every scoreboard objective, bossbar and team relevant \
      to the data pack. The gamemode and your selected kit will be reset. Only do this if you know what you are doing"\
  }}\
]

# append second settings page
$data modify storage rauch temp.pages append value [\
  "",{"text":"      Toggles\n\n","bold":true},\
  {"text":"[",color:"dark_gray"},\
    {text:"Reload Message",color:"$(reload_message)","hover_event":{"action":"show_text","value":[\
      {"text":"Send the reload message every time the world gets reloaded. Default on."}]},"click_event":\
        {"action":"run_command","command":"/function rauch:settings/toggles/toggle_reload_message"}},\
  {text:"]\n",color:"dark_gray"},\
  {text:"[",color:"dark_gray"},\
    {"text":"Enable Flag Sprint",color:"$(flag_sprint)","hover_event":{"action":"show_text","value":[\
      {"text":"Experimental gameplay balancing setting. Sets wether players that carry the flag in the capture the flag mode can sprint. Default off."}]},"click_event":\
        {"action":"run_command","command":"/function rauch:settings/toggles/toggle_flag_sprint"}},\
  {text:"]\n",color:"dark_gray"},\
  {text:"[",color:"dark_gray"},\
    {"text":"Delayed Clear",color:"$(delayed_clear)","hover_event":{"action":"show_text","value":[\
      {"text":"Clears players 10 ticks after a game stars and ends. Sometimes on servers the inventory glitches out and this setting fixes that. Default on."}]},"click_event":\
        {"action":"run_command","command":"/function rauch:settings/toggles/toggle_delayed_clear"}},\
  {text:"]\n",color:"dark_gray"},\
  {text:"[",color:"dark_gray"},\
    {"text":"Wokkaman Selectable",color:"$(wokkaman_selectability)","hover_event":{"action":"show_text","value":[\
      {"text":"Sets wether the wokkaman kit can be selected in the kit selector by anyone, in any mode. Default off."}]},"click_event":\
        {"action":"run_command","command":"/function rauch:settings/toggles/toggle_wokkaman_selectability"}},\
  {text:"]\n",color:"dark_gray"},\
]
