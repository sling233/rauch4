execute as @s[scores={damage_taken=..7}] run data merge storage temp {color:"aqua"}
execute as @s[scores={damage_taken=8..16}] run data merge storage temp {color:"white"}
execute as @s[scores={damage_taken=17..29}] run data merge storage temp {color:"yellow"}
execute as @s[scores={damage_taken=30..39}] run data merge storage temp {color:"gold"}
execute as @s[scores={damage_taken=40..49}] run data merge storage temp {color:"red"}
execute as @s[scores={damage_taken=50..69}] run data merge storage temp {color:"dark_red"}
execute as @s[scores={damage_taken=70..}] run data merge storage temp {color:"black"}

scoreboard objectives add t_damage_calc dummy
scoreboard players operation @s t_damage_calc = @s damage_taken
scoreboard players operation @s t_damage_calc %= Global 20

execute store result storage temp dmg1 int 0.05 run scoreboard players get @s damage_taken
execute store result storage temp dmg2 int 0.5 run scoreboard players get @s t_damage_calc

scoreboard objectives remove t_damage_calc

function rauch:game/ui/set_damage_name with storage temp

tag @e[type=item,tag=setup,limit=1] remove setup
scoreboard players reset @s damage_taken
