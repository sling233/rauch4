# add variables (basically i'm doing a for loop) (all temporary)
scoreboard objectives add iq dummy
scoreboard objectives add end_valueq dummy

# set values
scoreboard players set Global iq 0
execute store result score Global end_valueq run data get storage game_data damage_queue

execute if score Global iq < Global end_valueq run function rauch:game/mechanics/dmg_queue/find_me_loop
scoreboard objectives remove iq
scoreboard objectives remove end_valueq
