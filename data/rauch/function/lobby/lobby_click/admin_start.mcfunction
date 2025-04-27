# return if no map is selected
execute unless data storage map_data active run return run tellraw @s {"text":"A Map has to be selected first","color":"red"}
# else start game
function rauch:game/framework/gameinit/customteams_start