# downpatch
tellraw @a [{"text":"dev605","color":"light_purple"},{"text":" <- ","color":"red"},{"text":"Future Version (Id: ","color":"aqua"},{"score":{"name":"Global","objective":"version"}},{"text":")","color":"aqua"}]
tellraw @a [{"text":"- Downpatching may lead to the existance of unnecessary scoreboard objectives, teams and bossbars.\n","color":"yellow"},\
{"text":"- It is not guaranteed that downpatching will work without bugs, even for version 6.0.0 and higher. Most things should be fine, but if e.g the map data format changes, things would break.\n\
Know Issues as of this version:\n\
- Downpatching to 5.2.0 or lower in general may lead to unexpected behaviour since the version tracker wasn\'t implemented at that time, and no warning will be shown.\n\
- Downpatching from 6.0.0 or higher to previous versions will remove map data. You can re-add it in that version.\n\
- Downpatching from 6.0.1 or higher to previous versions will remove the lobby position. You can re-add it in that version.\
","color":"red"}]


# save global click (saves if reload message is shown)
#scoreboard objectives add reload_message_disabled_temp dummy
#scoreboard players operation Global reload_message_disabled_temp = %reload_message_disabled global

# remove scores (avoids bugs due to objectives changing type over version)
function rauch:settings/removeobj
# avoid reload message from showing a second time
#scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
#scoreboard players set Global click 10
# re-add scores
function rauch:setup
tellraw @a {"text":"Automatically reloaded, re-added everything","color":"green"}
# set saved values
#scoreboard players operation %reload_message_disabled global = Global reload_message_disabled_temp
#scoreboard objectives remove reload_message_disabled_temp

# set new version
scoreboard players operation Global version = Global this_version
