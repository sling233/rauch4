data modify storage rauch temp.pages[0] append value {"text":"\n[","color":"dark_gray"}
$data modify storage rauch temp.pages[0] append value {"text":"Testing Mode","color":"$(testing)","hover_event":{"action":"show_text","value":[\
        {"text":"Mode for development and testing. No ability cooldown, instant respawn and game start. To end, run this command: \
        /function utils_rauch:abort_game","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 4"}}
data modify storage rauch temp.pages[0] append value {"text":"]\n","color":"dark_gray"}

data modify storage rauch temp.pages[0] append value {"text":"[","color":"dark_gray"}
$data modify storage rauch temp.pages[0] append value {"text":"Check Spawns","color":"$(spawn_check)","hover_event":{"action":"show_text","value":[\
        {"text":"Automatically teleports you to the spawns","color":"white"}]},\
        "click_event":{"action":"run_command","command":"/trigger adminsetting set 8"}}
data modify storage rauch temp.pages[0] append value {"text":"]\n","color":"dark_gray"}
