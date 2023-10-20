# downpatch
tellraw @a [{"text":"6.0.0","color":"light_purple"},{"text":" <- ","color":"red"},{"text":"Future Version (Id: ","color":"aqua"},{"score":{"name":"Global","objective":"version"}},{"text":")","color":"aqua"}]
tellraw @a [{"text":"- Downpatching may lead to the existance of unnecessary scoreboard objectives, teams and bossbars.\n","color":"yellow"},\
{"text":"- It is not guaranteed that downpatching will work without bugs in the future, even for version 6.0.0 and higher. Most things should be fine, but if e.g the map data format changes, things would break.\n\
- Downpatching to 5.2.0 or lower in general may lead to unexpected behaviour since the version tracker wasn\'t implemented at that time, and no warning will be shown.","color":"red"}]

# save global click (saves if reload message is shown)
scoreboard objectives add click_temp dummy
scoreboard players operation Global click_temp = Global click

# remove scores (avoids bugs due to objectives chaning type over version)
function rauch:settings/removeobj
# avoid reload message from showing a second time
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set Global click 10
# re-add scores
function rauch:setup

# set saved values
scoreboard players operation Global click = Global click_temp
scoreboard objectives remove click_temp

# set new version
scoreboard players operation Global version = Global this_version
