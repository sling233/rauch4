# look at front of array
# temporary variable
scoreboard objectives add t_pnumq dummy
execute store result score Global t_pnumq run data get storage game_data damage_queue[0].id

# if its not @s's data, append to end of array and delete front
execute unless score @s pnum = Global t_pnumq run data modify storage game_data damage_queue append from storage game_data damage_queue[0]
execute unless score @s pnum = Global t_pnumq run data remove storage game_data damage_queue[0]
# else cancel for loop (set i to end_value)
execute if score @s pnum = Global t_pnumq run scoreboard players operation Global iq = Global end_valueq

scoreboard objectives remove t_pnumq

# loop logic --------------------------------------
scoreboard players add Global iq 1
execute if score Global iq < Global end_valueq run function rauch:game/mechanics/dmg_queue/find_me_loop
