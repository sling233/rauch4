execute unless entity @a[tag=game] run return run function rauch:game/framework/no_players
# can end the game
execute if score Global gameend matches 0.. run function rauch:game/framework/end_delay
execute unless score Global game_running matches 1 run return 0

execute if score Global gamestart matches 0.. run function rauch:game/framework/gameinit/countdown

execute as @a[tag=game] run function rauch:game/player
execute as @a[tag=spectator] run function rauch:game/framework/spectator

# class specific stuff
function rauch:game/kits/tick_global

execute as @e[type=text_display,tag=damage_number] run function rauch:game/ui/damage_number_tick

function rauch:game/mode/tick
execute if function rauch:game/mode/has_respawning run function rauch:game/mechanics/respawn/respawn_main