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
    ],\
    [\
        "",{"text":"      Settings","bold":true},\
        {"text":"\nSpawn prebuilt Map","color":"dark_blue","hover_event":{"action":"show_text","value":[\
            {"text":"Spawns a prebuilt map. Click for further options"}]},"click_event":\
            {"action":"run_command","command":"/function rauch:settings/spawn_map/spawn_map"}},\
        {"text":"\nEveryone to Lobby","color":"dark_blue","hover_event":{"action":"show_text","value":[\
            {"text":"Moves every online player to the lobby"}]},"click_event":\
            {"action":"run_command","command":"/function rauch:settings/movetolobby/movetolobby"}},\
        {"text":"\nChange Lobby Pos","color":"dark_blue","hover_event":{"action":"show_text","value":[\
            {"text":"Click to change the Position of the Lobby to where you are standing right now"}]},"click_event":\
            {"action":"run_command","command":"/function rauch:settings/changelobbypos"}},\
        {"text":"\nSpawn prebuilt Lobby","color":"dark_blue","hover_event":{"action":"show_text","value":[\
            {"text":"Click if you want to spawn the prebuilt lobby"}]},"click_event":\
            {"action":"run_command","command":"/function rauch:settings/spawn_lobby/spawn_lobby"}},\
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
            to the data pack. The gamemode and your selected kit will be reset. If the pack updates and something looks weird, \
            a bossbar for example, this can fix it."}}\
    ]\
]

execute store result score t_map_count temp run data get storage map_data maps

# no maps
execute if score t_map_count temp matches 0 run data modify storage rauch temp.pages[1] append value [\
    {"text":"\nNo Maps","color":"dark_gray"}\
]
# some maps
execute if score t_map_count temp matches 1..8 run function rauch:macros/foreach {for_path:"map_data maps",for_function:"rauch:lobby/ui/mapselector_macro"}
# not max number of maps
execute if score t_map_count temp matches ..7 run data modify storage rauch temp.pages[1] append value [\
  {"text":"\n\n[","color":"dark_gray"},{"text":"Add Map","color":"dark_green",\
  "click_event":{"action":"run_command","command":"/function rauch:settings/edit_map/add_map"}},{"text":"] ","color":"dark_gray"}\
]
# max number of maps
execute if score t_map_count temp matches 8 run data modify storage rauch temp.pages[1] append value [\
  {"text":"\n\nMaximum number of maps reached","color":"gray"}\
]

scoreboard players reset t_map_count temp