# hack init tasks that can happen for any player but are because of a specific kit

execute if score @s kit matches 1 run return 0
execute if score @s kit matches 2 run return 0
execute if score @s kit matches 3 run return run function rauch:game/kits/raucher/hack_init_other
execute if score @s kit matches 4 run return 0
execute if score @s kit matches 5 run return 0
execute if score @s kit matches 6 run return 0
execute if score @s kit matches 7 run return run function rauch:game/kits/tank/hack_init_other
execute if score @s kit matches 8 run return 0
execute if score @s kit matches 9 run return 0


execute unless score @s kit matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run hack_init_other function, kit id unset"]
scoreboard players operation err temp = @s kit
tellraw @a [{text:"",color:"red"},"Error when trying to run hack_init_other function, not implemented for kit id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp