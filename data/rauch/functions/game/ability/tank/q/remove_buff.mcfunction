# start
scoreboard objectives add i dummy
scoreboard players set Global i 0
# end
scoreboard objectives add end_value dummy
scoreboard players operation Global end_value = @s tank_resistance_num
# call loop
execute if score Global i < Global end_value run function rauch:game/ability/tank/q/remove_buff_loop
# remove start and end variables
scoreboard objectives remove i
scoreboard objectives remove end_value


scoreboard players reset @s tank_resistance
scoreboard players reset @s tank_resistance_num
