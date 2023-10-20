scoreboard objectives add calc dummy
scoreboard players operation Global calc = Global end_value
scoreboard players operation Global calc -= Global i

data merge storage temp {pnum:-1,number:-1}
execute store result storage temp pnum int 1 run scoreboard players get @s pnum
execute store result storage temp number int 1 run scoreboard players get Global calc
function rauch:game/ability/raucher/q/remove_attribute_macro with storage temp

scoreboard objectives remove calc

# loop logic --------------------------------------
scoreboard players add Global i 1
execute if score Global i < Global end_value run function rauch:game/ability/raucher/q/remove_buff_loop
