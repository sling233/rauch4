tellraw @s {"text":"Warning: The lobby is big (68x61x64). Make sure there is enough space available. This will automatically move the lobby position.","color":"yellow"}
tellraw @s [{"text":"Click ","color":"yellow"},{"text":"HERE","color":"gold","click_event":{"action":"run_command","command":"/function rauch:settings/spawn_lobby/spawn"}},{"text":" to spawn the lobby.","color":"yellow"}]
