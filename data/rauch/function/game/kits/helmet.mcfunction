# currently only used by wokkaman

execute if score @s kit matches 1 run return run item replace entity @s armor.head with air
execute if score @s kit matches 2 run return run item replace entity @s armor.head with air
execute if score @s kit matches 3 run return run item replace entity @s armor.head with air
execute if score @s kit matches 4 run return run item replace entity @s armor.head with air
execute if score @s kit matches 5 run return run item replace entity @s armor.head with air
execute if score @s kit matches 6 run return run item replace entity @s armor.head with air
execute if score @s kit matches 7 run return run item replace entity @s armor.head with air
execute if score @s kit matches 8 run return run item replace entity @s armor.head with air
execute if score @s kit matches 9 run return run function rauch:game/kits/wokkaman/helmet

execute unless score @s kit matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run helmet function, kit id unset"]
scoreboard players operation err temp = @s kit
tellraw @a [{text:"",color:"red"},"Error when trying to run helmet function, not implemented for kit id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp