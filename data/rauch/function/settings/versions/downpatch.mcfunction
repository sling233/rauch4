# downpatch
tellraw @a [{"text":"dev611","color":"light_purple"},{"text":" <- ","color":"red"},{"text":"Future Version (Id: ","color":"aqua"},{"score":{"name":"Global","objective":"version"}},{"text":")","color":"aqua"}]
tellraw @a [{"text":"- As of version dev611, downpatching is no longer supported due to the multitude of unfixable issues arising. \
If you want to use an older version, please create a new world. \
You can re-install the newer version with no risk.","color":"red"}]
# remove scores (avoids bugs due to objectives changing type over version)
# function rauch:settings/removeobj
# avoid reload message from showing a second time
#scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
#scoreboard players set Global click 10
# re-add scores
# function rauch:setup
# tellraw @a {"text":"Automatically reloaded, re-added everything","color":"green"}
# set saved values
#scoreboard players operation %reload_message_disabled global = Global reload_message_disabled_temp
#scoreboard objectives remove reload_message_disabled_temp

# set new version
# scoreboard players set Global version 610
